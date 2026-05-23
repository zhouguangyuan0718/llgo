package metrics

import (
	"math"
	"runtime"
	"unsafe"
)

type llgoMetricMemStats struct {
	alloc        uint64
	totalAlloc   uint64
	sys          uint64
	mallocs      uint64
	frees        uint64
	heapAlloc    uint64
	heapSys      uint64
	heapIdle     uint64
	heapInuse    uint64
	heapReleased uint64
	heapObjects  uint64
	stackInuse   uint64
	stackSys     uint64
	mSpanInuse   uint64
	mSpanSys     uint64
	mCacheInuse  uint64
	mCacheSys    uint64
	buckHashSys  uint64
	gcSys        uint64
	otherSys     uint64
	nextGC       uint64
	numGC        uint32
	numForcedGC  uint32
}

var (
	llgoMetricKinds              map[string]ValueKind
	llgoMetricDefaultHistBuckets = []float64{0, math.Inf(1)}
)

// runtime_readMetrics replaces the GOROOT declaration that is normally
// implemented by package runtime. Keep the catalog and value layouts in this
// package, so LLGo only supplies the small subset of values it can observe.
func runtime_readMetrics(samplesp unsafe.Pointer, n int, _ int) {
	samples := unsafe.Slice((*Sample)(samplesp), n)
	kinds := llgoMetricKindMap()
	mem, hasMem := llgoReadMetricMemStats()

	for i := range samples {
		sample := &samples[i]
		kind, ok := kinds[sample.Name]
		if !ok {
			sample.Value = Value{}
			continue
		}
		llgoSetMetricDefault(&sample.Value, kind)
		if llgoSetRuntimeMetric(sample.Name, &sample.Value, mem, hasMem) {
			continue
		}
	}
}

func llgoMetricKindMap() map[string]ValueKind {
	if llgoMetricKinds != nil {
		return llgoMetricKinds
	}
	kinds := make(map[string]ValueKind, len(allDesc))
	for _, desc := range allDesc {
		kinds[desc.Name] = desc.Kind
	}
	llgoMetricKinds = kinds
	return kinds
}

func llgoSetRuntimeMetric(name string, value *Value, mem llgoMetricMemStats, hasMem bool) bool {
	switch name {
	case "/sched/gomaxprocs:threads", "/sched/threads/total:threads":
		llgoSetUint64(value, uint64(runtime.GOMAXPROCS(0)))
	case "/sched/goroutines-created:goroutines",
		"/sched/goroutines/running:goroutines",
		"/sched/goroutines:goroutines":
		llgoSetUint64(value, 1)
	case "/gc/cycles/automatic:gc-cycles":
		if !hasMem {
			return false
		}
		llgoSetUint64(value, llgoSaturatingSub(uint64(mem.numGC), uint64(mem.numForcedGC)))
	case "/gc/cycles/forced:gc-cycles":
		if !hasMem {
			return false
		}
		llgoSetUint64(value, uint64(mem.numForcedGC))
	case "/gc/cycles/total:gc-cycles":
		if !hasMem {
			return false
		}
		llgoSetUint64(value, uint64(mem.numGC))
	case "/gc/heap/allocs:bytes":
		if !hasMem {
			return false
		}
		llgoSetUint64(value, mem.totalAlloc)
	case "/gc/heap/allocs:objects":
		if !hasMem {
			return false
		}
		llgoSetUint64(value, mem.mallocs)
	case "/gc/heap/frees:bytes":
		if !hasMem {
			return false
		}
		llgoSetUint64(value, llgoSaturatingSub(mem.totalAlloc, mem.alloc))
	case "/gc/heap/frees:objects":
		if !hasMem {
			return false
		}
		llgoSetUint64(value, mem.frees)
	case "/gc/heap/goal:bytes":
		if !hasMem {
			return false
		}
		llgoSetUint64(value, mem.nextGC)
	case "/gc/heap/live:bytes", "/memory/classes/heap/objects:bytes":
		if !hasMem {
			return false
		}
		llgoSetUint64(value, mem.heapAlloc)
	case "/gc/heap/objects:objects":
		if !hasMem {
			return false
		}
		llgoSetUint64(value, mem.heapObjects)
	case "/memory/classes/heap/free:bytes":
		if !hasMem {
			return false
		}
		llgoSetUint64(value, llgoSaturatingSub(mem.heapIdle, mem.heapReleased))
	case "/memory/classes/heap/released:bytes":
		if !hasMem {
			return false
		}
		llgoSetUint64(value, mem.heapReleased)
	case "/memory/classes/heap/stacks:bytes":
		if !hasMem {
			return false
		}
		llgoSetUint64(value, mem.stackInuse)
	case "/memory/classes/heap/unused:bytes":
		if !hasMem {
			return false
		}
		llgoSetUint64(value, llgoSaturatingSub(mem.heapInuse, mem.heapAlloc))
	case "/memory/classes/metadata/mcache/free:bytes":
		if !hasMem {
			return false
		}
		llgoSetUint64(value, llgoSaturatingSub(mem.mCacheSys, mem.mCacheInuse))
	case "/memory/classes/metadata/mcache/inuse:bytes":
		if !hasMem {
			return false
		}
		llgoSetUint64(value, mem.mCacheInuse)
	case "/memory/classes/metadata/mspan/free:bytes":
		if !hasMem {
			return false
		}
		llgoSetUint64(value, llgoSaturatingSub(mem.mSpanSys, mem.mSpanInuse))
	case "/memory/classes/metadata/mspan/inuse:bytes":
		if !hasMem {
			return false
		}
		llgoSetUint64(value, mem.mSpanInuse)
	case "/memory/classes/metadata/other:bytes":
		if !hasMem {
			return false
		}
		llgoSetUint64(value, mem.gcSys)
	case "/memory/classes/os-stacks:bytes":
		if !hasMem {
			return false
		}
		llgoSetUint64(value, llgoSaturatingSub(mem.stackSys, mem.stackInuse))
	case "/memory/classes/other:bytes":
		if !hasMem {
			return false
		}
		llgoSetUint64(value, mem.otherSys)
	case "/memory/classes/profiling/buckets:bytes":
		if !hasMem {
			return false
		}
		llgoSetUint64(value, mem.buckHashSys)
	case "/memory/classes/total:bytes":
		if !hasMem {
			return false
		}
		llgoSetUint64(value, mem.sys)
	default:
		return false
	}
	return true
}

func llgoSetMetricDefault(value *Value, kind ValueKind) {
	switch kind {
	case KindUint64:
		llgoSetUint64(value, 0)
	case KindFloat64:
		value.kind = KindFloat64
		value.scalar = math.Float64bits(0)
		value.pointer = nil
	case KindFloat64Histogram:
		llgoFloat64HistOrInit(value, llgoMetricDefaultHistBuckets)
	default:
		*value = Value{}
	}
}

func llgoSetUint64(value *Value, n uint64) {
	value.kind = KindUint64
	value.scalar = n
	value.pointer = nil
}

func llgoFloat64HistOrInit(value *Value, buckets []float64) *Float64Histogram {
	var hist *Float64Histogram
	if value.kind == KindFloat64Histogram && value.pointer != nil {
		hist = (*Float64Histogram)(value.pointer)
	} else {
		hist = new(Float64Histogram)
		value.pointer = unsafe.Pointer(hist)
	}
	value.kind = KindFloat64Histogram
	value.scalar = 0
	hist.Buckets = buckets
	if len(hist.Counts) != len(buckets)-1 {
		hist.Counts = make([]uint64, len(buckets)-1)
	} else {
		clear(hist.Counts)
	}
	return hist
}

func llgoSaturatingSub(a, b uint64) uint64 {
	if a < b {
		return 0
	}
	return a - b
}

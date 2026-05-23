package main

import (
	"fmt"
	"runtime/metrics"
)

func check(name string, kind metrics.ValueKind) {
	samples := []metrics.Sample{{Name: name}}
	metrics.Read(samples)
	if got := samples[0].Value.Kind(); got != kind {
		fmt.Printf("kind %s = %d, want %d\n", name, got, kind)
		return
	}
	switch kind {
	case metrics.KindUint64:
		_ = samples[0].Value.Uint64()
	case metrics.KindFloat64:
		_ = samples[0].Value.Float64()
	case metrics.KindFloat64Histogram:
		hist := samples[0].Value.Float64Histogram()
		if hist == nil || len(hist.Buckets) != len(hist.Counts)+1 {
			fmt.Printf("bad histogram %s\n", name)
			return
		}
	}
	fmt.Println("ok", name)
}

func main() {
	check("/sched/gomaxprocs:threads", metrics.KindUint64)
	check("/gc/gogc:percent", metrics.KindUint64)
	check("/cpu/classes/total:cpu-seconds", metrics.KindFloat64)
	check("/gc/pauses:seconds", metrics.KindFloat64Histogram)

	samples := []metrics.Sample{{Name: "/llgo/unknown:things"}}
	metrics.Read(samples)
	fmt.Println("bad", samples[0].Value.Kind())
}

//go:build !nogc

package metrics

import "runtime"

func llgoReadMetricMemStats() (llgoMetricMemStats, bool) {
	var m runtime.MemStats
	runtime.ReadMemStats(&m)
	heapObjects := m.HeapObjects
	if heapObjects == 0 {
		heapObjects = llgoSaturatingSub(m.Mallocs, m.Frees)
	}
	return llgoMetricMemStats{
		alloc:        m.Alloc,
		totalAlloc:   m.TotalAlloc,
		sys:          m.Sys,
		mallocs:      m.Mallocs,
		frees:        m.Frees,
		heapAlloc:    m.HeapAlloc,
		heapSys:      m.HeapSys,
		heapIdle:     m.HeapIdle,
		heapInuse:    m.HeapInuse,
		heapReleased: m.HeapReleased,
		heapObjects:  heapObjects,
		stackInuse:   m.StackInuse,
		stackSys:     m.StackSys,
		mSpanInuse:   m.MSpanInuse,
		mSpanSys:     m.MSpanSys,
		mCacheInuse:  m.MCacheInuse,
		mCacheSys:    m.MCacheSys,
		buckHashSys:  m.BuckHashSys,
		gcSys:        m.GCSys,
		otherSys:     m.OtherSys,
		nextGC:       m.NextGC,
		numGC:        m.NumGC,
		numForcedGC:  m.NumForcedGC,
	}, true
}

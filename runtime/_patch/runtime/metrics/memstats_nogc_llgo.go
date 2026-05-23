//go:build nogc

package metrics

func llgoReadMetricMemStats() (llgoMetricMemStats, bool) {
	return llgoMetricMemStats{}, false
}

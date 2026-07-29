package build

import "strings"

// BuildRequest contains the process-derived inputs used by one build. Empty
// Dir and a nil Env preserve the command-line behavior by snapshotting the
// current working directory and environment once, before the build starts.
type BuildRequest struct {
	Args   []string
	Config *Config
	Dir    string
	Env    []string
}

func withEnv(environ []string, values ...string) []string {
	keys := make(map[string]struct{}, len(values))
	for _, value := range values {
		if key, _, ok := strings.Cut(value, "="); ok {
			keys[key] = struct{}{}
		}
	}
	ret := make([]string, 0, len(environ)+len(values))
	for _, value := range environ {
		key, _, ok := strings.Cut(value, "=")
		// Ignore malformed entries: exec.Cmd requires KEY=VALUE strings.
		if _, replace := keys[key]; ok && replace {
			continue
		}
		if ok {
			ret = append(ret, value)
		}
	}
	return append(ret, values...)
}

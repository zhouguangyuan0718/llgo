package build

import (
	"path/filepath"
	"strings"
)

// BuildRequest contains the explicit inputs used by one build. An empty Dir
// uses the working directory captured when Build starts. Build inherits one
// snapshot of the host environment; per-request environment overrides are not
// supported.
type BuildRequest struct {
	Args   []string
	Config *Config
	Dir    string
}

func resolveOutputs(dir string, out *OutFmtDetails) {
	out.Out = resolvePath(dir, out.Out)
	out.PCLN = resolvePath(dir, out.PCLN)
	out.Bin = resolvePath(dir, out.Bin)
	out.Hex = resolvePath(dir, out.Hex)
	out.Img = resolvePath(dir, out.Img)
	out.Uf2 = resolvePath(dir, out.Uf2)
	out.Zip = resolvePath(dir, out.Zip)
}

func resolvePath(dir, path string) string {
	if path == "" || filepath.IsAbs(path) {
		return path
	}
	return filepath.Join(dir, path)
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

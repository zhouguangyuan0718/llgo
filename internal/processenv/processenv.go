package processenv

import (
	"fmt"
	"os"
	"path/filepath"
	"slices"
	"strings"
)

// Context contains the process-derived inputs used by one request.
type Context struct {
	Dir string
	Env []string
}

// Clone returns an independent copy of the context.
func (c Context) Clone() Context {
	c.Env = slices.Clone(c.Env)
	return c
}

// Capture resolves omitted process inputs once. A nil environ snapshots the
// current process environment; an empty non-nil environ remains empty.
func Capture(dir string, environ []string) (Context, error) {
	if dir == "" {
		var err error
		dir, err = os.Getwd()
		if err != nil {
			return Context{}, fmt.Errorf("get working directory: %w", err)
		}
	}
	env := slices.Clone(environ)
	if environ == nil {
		env = os.Environ()
	}
	return Context{Dir: dir, Env: env}, nil
}

// Abs resolves path relative to the context working directory.
func (c Context) Abs(path string) string {
	if path == "" || filepath.IsAbs(path) {
		return path
	}
	return filepath.Join(c.Dir, path)
}

// Get returns the last value for key in the context environment.
func (c Context) Get(key string) string {
	if c.Env == nil {
		return os.Getenv(key)
	}
	return Get(c.Env, key)
}

// Lookup returns the last value for key in the context environment and whether
// it was present.
func (c Context) Lookup(key string) (string, bool) {
	if c.Env == nil {
		return os.LookupEnv(key)
	}
	return Lookup(c.Env, key)
}

// Get returns the last value for key, matching the convention used when an
// exec.Cmd environment contains duplicate entries.
func Get(environ []string, key string) string {
	value, _ := Lookup(environ, key)
	return value
}

// Lookup returns the last value for key and whether it was present.
func Lookup(environ []string, key string) (string, bool) {
	prefix := key + "="
	for i := len(environ) - 1; i >= 0; i-- {
		if strings.HasPrefix(environ[i], prefix) {
			return strings.TrimPrefix(environ[i], prefix), true
		}
	}
	return "", false
}

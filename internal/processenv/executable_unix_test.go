//go:build unix && !llgo

package processenv

import (
	"os"
	"path/filepath"
	"testing"
)

func TestExecutableRequiresExecutePermission(t *testing.T) {
	dir := t.TempDir()
	path := filepath.Join(dir, "tool")
	if err := os.WriteFile(path, []byte("#!/bin/sh\n"), 0o644); err != nil {
		t.Fatal(err)
	}
	if executable(path) {
		t.Fatal("non-executable file reported executable")
	}
	if err := os.Chmod(path, 0o755); err != nil {
		t.Fatal(err)
	}
	if !executable(path) {
		t.Fatal("executable file reported non-executable")
	}
	if executable(dir) {
		t.Fatal("directory reported executable")
	}
	if executable(filepath.Join(dir, "missing")) {
		t.Fatal("missing file reported executable")
	}
}

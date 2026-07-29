//go:build !llgo

package processenv

import (
	"path/filepath"
	"testing"
)

func TestCaptureClonesExplicitInputs(t *testing.T) {
	workDir := t.TempDir()
	environ := []string{"KEY=value"}
	process, err := Capture(workDir, environ)
	if err != nil {
		t.Fatal(err)
	}
	environ[0] = "KEY=changed"
	if got := process.Get("KEY"); got != "value" {
		t.Fatalf("Get(KEY) = %q, want value", got)
	}
	if got := process.Abs("out.o"); got != filepath.Join(workDir, "out.o") {
		t.Fatalf("Abs(out.o) = %q", got)
	}
	if got := process.Abs(""); got != "" {
		t.Fatalf("Abs(empty) = %q", got)
	}
	if got := process.Abs(workDir); got != workDir {
		t.Fatalf("Abs(absolute) = %q", got)
	}
	if got, ok := process.Lookup("KEY"); !ok || got != "value" {
		t.Fatalf("Lookup(KEY) = %q, %v, want value, true", got, ok)
	}

	clone := process.Clone()
	clone.Env[0] = "KEY=clone"
	if got := process.Get("KEY"); got != "value" {
		t.Fatalf("clone changed source context: Get(KEY) = %q", got)
	}
}

func TestCaptureSnapshotsAmbientInputs(t *testing.T) {
	t.Setenv("PROCESSENV_CAPTURE_TEST", "before")
	process, err := Capture("", nil)
	if err != nil {
		t.Fatal(err)
	}
	t.Setenv("PROCESSENV_CAPTURE_TEST", "after")
	if got := process.Get("PROCESSENV_CAPTURE_TEST"); got != "before" {
		t.Fatalf("Get(PROCESSENV_CAPTURE_TEST) = %q, want before", got)
	}
	if process.Dir == "" || !filepath.IsAbs(process.Dir) {
		t.Fatalf("Capture directory = %q, want absolute working directory", process.Dir)
	}
}

func TestZeroContextUsesAmbientEnvironment(t *testing.T) {
	t.Setenv("PROCESSENV_CONTEXT_TEST", "ambient")
	var process Context
	if got := process.Get("PROCESSENV_CONTEXT_TEST"); got != "ambient" {
		t.Fatalf("Get(PROCESSENV_CONTEXT_TEST) = %q, want ambient", got)
	}
	if got, ok := process.Lookup("PROCESSENV_CONTEXT_TEST"); !ok || got != "ambient" {
		t.Fatalf("Lookup(PROCESSENV_CONTEXT_TEST) = %q, %v, want ambient, true", got, ok)
	}
}

func TestLookup(t *testing.T) {
	environ := []string{"KEY=first", "EMPTY=", "KEY=last"}
	if got, ok := Lookup(environ, "KEY"); !ok || got != "last" {
		t.Fatalf("Lookup(KEY) = %q, %v, want last, true", got, ok)
	}
	if got := Get(environ, "EMPTY"); got != "" {
		t.Fatalf("Get(EMPTY) = %q, want empty", got)
	}
	if _, ok := Lookup(environ, "MISSING"); ok {
		t.Fatal("Lookup(MISSING) reported present")
	}
}

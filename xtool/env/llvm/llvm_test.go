//go:build !llgo

package llvm

import (
	"path/filepath"
	"testing"
)

func TestToolBinsUseLLVMDirectory(t *testing.T) {
	binDir := t.TempDir()
	env := &Env{binDir: binDir}
	tests := map[string]string{
		"clang":   env.ClangBin(),
		"clang++": env.ClangXXBin(),
		"llvm-ar": env.LLVMArBin(),
		"llc":     env.LLCBin(),
	}
	for name, got := range tests {
		if want := filepath.Join(binDir, name); got != want {
			t.Errorf("%s path = %q, want %q", name, got, want)
		}
	}
}

func TestToolBinsFallBackToPATHNames(t *testing.T) {
	env := &Env{}
	if got := env.ClangBin(); got != "clang" {
		t.Errorf("ClangBin() = %q, want clang", got)
	}
	if got := env.ClangXXBin(); got != "clang++" {
		t.Errorf("ClangXXBin() = %q, want clang++", got)
	}
	if got := env.LLVMArBin(); got != "llvm-ar" {
		t.Errorf("LLVMArBin() = %q, want llvm-ar", got)
	}
	if got := env.LLCBin(); got != "llc" {
		t.Errorf("LLCBin() = %q, want llc", got)
	}
}

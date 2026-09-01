package main

import (
	"bytes"
	"regexp"
	"strings"
	"testing"
)

func TestRun(t *testing.T) {
	tests := []struct {
		name    string
		args    []string
		major   string
		version string
	}{
		{name: "default", major: "22", version: "22.1.4_20260901"},
		{name: "explicit LLVM 21", args: []string{"-major", "21"}, major: "21", version: "21.1.3_20260816"},
	}
	for _, test := range tests {
		t.Run(test.name, func(t *testing.T) {
			var stdout, stderr bytes.Buffer
			if code := run(test.args, &stdout, &stderr); code != 0 {
				t.Fatalf("run(%q) exit code = %d, stderr = %q", test.args, code, stderr.String())
			}
			for _, want := range []string{
				"LLGO_LLVM_MAJOR=" + test.major + "\n",
				"ESP_CLANG_LLVM_MAJOR=" + test.major + "\n",
				"ESP_CLANG_VERSION=" + test.version + "\n",
				"ESP_CLANG_BASE_URL=https://github.com/goplus/espressif-llvm-project-prebuilt/releases/download/" + test.version + "\n",
			} {
				if !strings.Contains(stdout.String(), want) {
					t.Errorf("run(%q) output does not contain %q:\n%s", test.args, want, stdout.String())
				}
			}
			for _, key := range []string{
				"ESP_CLANG_SHA256_DARWIN_AMD64",
				"ESP_CLANG_SHA256_DARWIN_ARM64",
				"ESP_CLANG_SHA256_LINUX_AMD64",
				"ESP_CLANG_SHA256_LINUX_ARM64",
			} {
				if !regexp.MustCompile(`(?m)^` + key + `=[0-9a-f]{64}$`).MatchString(stdout.String()) {
					t.Errorf("run(%q) output has no valid %s:\n%s", test.args, key, stdout.String())
				}
			}
			if stderr.Len() != 0 {
				t.Errorf("run(%q) stderr = %q", test.args, stderr.String())
			}
		})
	}
}

func TestRunErrors(t *testing.T) {
	tests := []struct {
		args []string
		want string
	}{
		{args: []string{"-major", "19"}, want: "no LLGo LLVM payload for major version 19"},
		{args: []string{"-major", "invalid"}, want: "invalid value"},
	}
	for _, test := range tests {
		var stdout, stderr bytes.Buffer
		if code := run(test.args, &stdout, &stderr); code == 0 {
			t.Fatalf("run(%q) unexpectedly succeeded", test.args)
		}
		if stdout.Len() != 0 {
			t.Errorf("run(%q) stdout = %q", test.args, stdout.String())
		}
		if !strings.Contains(stderr.String(), test.want) {
			t.Errorf("run(%q) stderr = %q, want substring %q", test.args, stderr.String(), test.want)
		}
	}
}

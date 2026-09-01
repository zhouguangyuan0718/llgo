module github.com/xgo-dev/llgo

go 1.27.0

require (
	github.com/goplus/cobra v1.9.12 //xgo:class
	github.com/goplus/gogen v1.23.5
	github.com/goplus/lib v0.5.0
	github.com/goplus/mod v0.22.0
	github.com/mattn/go-tty v0.0.8
	github.com/qiniu/x v1.18.3
	github.com/xgo-dev/llgo/runtime v0.0.0-00010101000000-000000000000
	github.com/xgo-dev/llvm v0.9.8
	github.com/xgo-dev/plan9asm v0.5.1
	go.bug.st/serial v1.6.4
	go.yaml.in/yaml/v3 v3.0.5
	golang.org/x/mod v0.40.0
	golang.org/x/sys v0.47.0
	golang.org/x/tools v0.49.0
)

require (
	github.com/creack/goselect v0.1.2 // indirect
	github.com/mattn/go-isatty v0.0.20 // indirect
	golang.org/x/sync v0.22.0 // indirect
)

replace github.com/xgo-dev/llgo/runtime => ./runtime

// Temporary stacked-branch dependency: replace with the first goplus/lib
// release containing its version-neutral Windows LLVM metadata before this PR
// is merged.
replace github.com/goplus/lib => github.com/zhouguangyuan0718/lib v0.0.0-20260901051643-a8f1f8266c99

// Temporary stacked-branch dependency: replace with the first xgo-dev/llvm
// release containing xgo-dev/llvm#51 before this PR is merged.
replace github.com/xgo-dev/llvm => github.com/zhouguangyuan0718/go-llvm v0.0.0-20260901012627-e8df25dd9890

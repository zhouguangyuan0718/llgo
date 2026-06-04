# LLGo Agent Notes

## Kubernetes Link Regression Tests

The Kubernetes link-symbol regressions are covered by tests under `test/go`.
Keep these tests in `test/go`; do not place them under `test/std`, which is for
native standard-library coverage.

Use the Go 1.26.2 toolchain for local reproduction:

```bash
export GOROOT=/opt/tools/go1.26.2.linux-amd64/go/
export PATH=/opt/tools/go1.26.2.linux-amd64/go/bin:$PATH
export LLGO_ROOT=/path/to/llgo
```

Generic and synthetic method symbol tests:

```bash
go test ./test/go -run 'TestKubeLinkGeneric(MethodTableSymbols|InstanceClosureLinkOnce)' -count=1
go run ./cmd/llgo test ./test/go -run 'TestKubeLinkGeneric(MethodTableSymbols|InstanceClosureLinkOnce)'
```

Reflect/runtime link symbol tests:

```bash
go test ./test/go -run 'TestKube(ReflectPrivateLinknameSymbols|ReflectValueGo126PromotedSymbols|RuntimeFuncFileLineSymbol)' -count=1
go run ./cmd/llgo test ./test/go -run 'TestKube(ReflectPrivateLinknameSymbols|ReflectValueGo126PromotedSymbols|RuntimeFuncFileLineSymbol)'
```

`golang.org/x/sys/unix` NoError syscall tests:

```bash
go test ./test/go -run 'TestKubeXSysUnixNoErrorSyscalls' -count=1
go run ./cmd/llgo test ./test/go -run 'TestKubeXSysUnixNoErrorSyscalls'
```

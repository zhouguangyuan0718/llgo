//go:build llvm19

package ssa

import "github.com/xgo-dev/llvm"

// LLVM 19 compatibility fallback. The primary LLVM 21 build uses the
// target-independent llvm.fake.use intrinsic instead.
func (p Program) fakeUseValue(b llvm.Builder, v llvm.Value) {
	fnTy := llvm.FunctionType(p.tyVoid(), []llvm.Type{v.Type()}, false)
	asm := llvm.InlineAsm(fnTy, "", "X", true, false, llvm.InlineAsmDialectATT, false)
	llvm.CreateCall(b, fnTy, asm, []llvm.Value{v})
}

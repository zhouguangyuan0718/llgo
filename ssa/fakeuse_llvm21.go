//go:build !llvm19

package ssa

import "github.com/xgo-dev/llvm"

func (p Program) fakeUseValue(b llvm.Builder, v llvm.Value) {
	// Keep this dependency local to the enclosing function: if that function is
	// removed, GlobalDCE must still be able to remove v. llvm.compiler.used is
	// therefore too strong here. LLVM 21's llvm.fake.use models the dependency
	// without target-specific inline-asm constraints. Code generation may still
	// materialize v in a register, but there is no inline-asm instruction.
	fnTy := llvm.FunctionType(p.tyVoid(), nil, true)
	mod := b.GetInsertBlock().Parent().GlobalParent()
	intrinsic := mod.NamedFunction("llvm.fake.use")
	if intrinsic.IsNil() {
		intrinsic = llvm.AddFunction(mod, "llvm.fake.use", fnTy)
	}
	llvm.CreateCall(b, fnTy, intrinsic, []llvm.Value{v})
}

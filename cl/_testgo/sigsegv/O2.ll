; ModuleID = '/tmp/720a88ca87ed4a0fb1188e09d32e721ec88641684b5c326135855e1637dc44f5-d-2975427131.ll'
source_filename = "command-line-arguments"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"github.com/goplus/llgo/runtime/abi.InterfaceType" = type { %"github.com/goplus/llgo/runtime/abi.Type", %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.Slice" }
%"github.com/goplus/llgo/runtime/abi.Type" = type { i64, i64, i32, i8, i8, i8, i8, { ptr, ptr }, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/runtime/abi.PtrType" = type { %"github.com/goplus/llgo/runtime/abi.Type", ptr }
%"github.com/goplus/llgo/runtime/abi.FuncType" = type { %"github.com/goplus/llgo/runtime/abi.Type", %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.Slice" }
%"github.com/goplus/llgo/runtime/abi.Imethod" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.iface" = type { ptr, ptr }

@"command-line-arguments.init$guard" = local_unnamed_addr global i1 false, align 1, !dbg !0
@0 = private unnamed_addr constant [4 x i8] c"init", align 1
@_llgo_error = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -1462738452, i8 4, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 5 }, ptr @"*_llgo_error" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 22 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_iface$Fh8eUJ-Gw4e6TYuajcFIOSCuqSPKAt5nS4ow7xeGXEU$imethods", i64 1, i64 1 } }, align 8
@1 = private unnamed_addr constant [5 x i8] c"error", align 1
@"*_llgo_error" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1621558991, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 5 }, ptr null }, ptr @_llgo_error }, align 8
@2 = private unnamed_addr constant [22 x i8] c"command-line-arguments", align 1
@3 = private unnamed_addr constant [5 x i8] c"Error", align 1
@"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1419376263, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 13 }, ptr @"*_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to$out", i64 1, i64 1 } }, align 8
@4 = private unnamed_addr constant [13 x i8] c"func() string", align 1
@"*_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1900367307, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 13 }, ptr null }, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to" }, align 8
@_llgo_string = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 8, i32 1749264893, i8 4, i8 8, i8 8, i8 24, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.strequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 6 }, ptr @"*_llgo_string" }, align 8
@5 = private unnamed_addr constant [6 x i8] c"string", align 1
@"*_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1323879264, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 6 }, ptr null }, ptr @_llgo_string }, align 8
@"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to$out" = weak_odr constant [1 x ptr] [ptr @_llgo_string], align 8
@"_llgo_iface$Fh8eUJ-Gw4e6TYuajcFIOSCuqSPKAt5nS4ow7xeGXEU$imethods" = weak_odr constant [1 x %"github.com/goplus/llgo/runtime/abi.Imethod"] [%"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 5 }, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to" }], align 8
@"_llgo_iface$Fh8eUJ-Gw4e6TYuajcFIOSCuqSPKAt5nS4ow7xeGXEU" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.InterfaceType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -1583200459, i8 0, i8 8, i8 8, i8 20, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 28 }, ptr @"*_llgo_iface$Fh8eUJ-Gw4e6TYuajcFIOSCuqSPKAt5nS4ow7xeGXEU" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 22 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_iface$Fh8eUJ-Gw4e6TYuajcFIOSCuqSPKAt5nS4ow7xeGXEU$imethods", i64 1, i64 1 } }, align 8
@6 = private unnamed_addr constant [28 x i8] c"interface { Error() string }", align 1
@"*_llgo_iface$Fh8eUJ-Gw4e6TYuajcFIOSCuqSPKAt5nS4ow7xeGXEU" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 722800013, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 28 }, ptr null }, ptr @"_llgo_iface$Fh8eUJ-Gw4e6TYuajcFIOSCuqSPKAt5nS4ow7xeGXEU" }, align 8
@7 = private unnamed_addr constant [7 x i8] c"recover", align 1
@8 = private unnamed_addr constant [4 x i8] c"main", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define noalias noundef ptr @command-line-arguments.f() local_unnamed_addr #0 !dbg !14 {
_llgo_0:
  ret ptr null, !dbg !24
}

define void @command-line-arguments.init() local_unnamed_addr !dbg !25 {
_llgo_0:
  %0 = load i1, ptr @"command-line-arguments.init$guard", align 1, !dbg !28
  br i1 %0, label %_llgo_2, label %_llgo_1, !dbg !28

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"command-line-arguments.init$guard", align 1, !dbg !28
  tail call void @"command-line-arguments.init#1"(), !dbg !28
  br label %_llgo_2, !dbg !28

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void, !dbg !28
}

define void @"command-line-arguments.init#1"() !dbg !29 {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(ptr nonnull @0, i64 4), !dbg !30
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10), !dbg !30
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.GetThreadDefer"(), !dbg !31
  %1 = alloca [200 x i8], align 1, !dbg !31
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 48), !dbg !31
  store ptr %1, ptr %2, align 8, !dbg !31
  %3 = getelementptr inbounds i8, ptr %2, i64 8, !dbg !31
  store i64 0, ptr %3, align 4, !dbg !31
  %4 = getelementptr inbounds i8, ptr %2, i64 16, !dbg !31
  store ptr %0, ptr %4, align 8, !dbg !31
  %5 = getelementptr inbounds i8, ptr %2, i64 24, !dbg !31
  store ptr blockaddress(@"command-line-arguments.init#1", %_llgo_2), ptr %5, align 8, !dbg !31
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetThreadDefer"(ptr nonnull %2), !dbg !31
  %6 = getelementptr inbounds i8, ptr %2, i64 32, !dbg !31
  %7 = getelementptr inbounds i8, ptr %2, i64 40, !dbg !31
  store ptr null, ptr %7, align 8, !dbg !31
  %8 = call i32 @__sigsetjmp(ptr nonnull %1, i32 0), !dbg !31
  %9 = icmp eq i32 %8, 0, !dbg !31
  br i1 %9, label %_llgo_4, label %_llgo_5, !dbg !31

common.ret:                                       ; preds = %_llgo_2, %_llgo_3
  ret void, !dbg !32

_llgo_2:                                          ; preds = %_llgo_5, %_llgo_4
  store ptr blockaddress(@"command-line-arguments.init#1", %_llgo_3), ptr %5, align 8, !dbg !32
  call void @"command-line-arguments.init#1$1"(), !dbg !32
  %.unpack4 = load ptr, ptr %4, align 8, !dbg !32
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetThreadDefer"(ptr %.unpack4), !dbg !32
  %10 = load ptr, ptr %6, align 8, !dbg !32
  indirectbr ptr %10, [label %_llgo_3, label %common.ret], !dbg !32

_llgo_3:                                          ; preds = %_llgo_5, %_llgo_2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Rethrow"(ptr %0), !dbg !31
  br label %common.ret, !dbg !32

_llgo_4:                                          ; preds = %_llgo_0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 undef), !dbg !33
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10), !dbg !33
  store ptr blockaddress(@"command-line-arguments.init#1", %common.ret), ptr %6, align 8, !dbg !32
  br label %_llgo_2, !dbg !32

_llgo_5:                                          ; preds = %_llgo_0
  store ptr blockaddress(@"command-line-arguments.init#1", %_llgo_3), ptr %6, align 8, !dbg !32
  %11 = load ptr, ptr %5, align 8, !dbg !32
  indirectbr ptr %11, [label %_llgo_3, label %_llgo_2], !dbg !32
}

define void @"command-line-arguments.init#1$1"() local_unnamed_addr !dbg !34 {
_llgo_0:
  %0 = tail call { ptr, ptr } @"github.com/goplus/llgo/runtime/internal/runtime.Recover"(), !dbg !35
  %.fca.0.extract11 = extractvalue { ptr, ptr } %0, 0, !dbg !35
    #dbg_value(ptr undef, !36, !DIExpression(DW_OP_deref), !43)
    #dbg_value(ptr undef, !36, !DIExpression(DW_OP_deref), !44)
  %1 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.Implements"(ptr nonnull @_llgo_error, ptr %.fca.0.extract11), !dbg !35
  br i1 %1, label %_llgo_3, label %_llgo_5, !dbg !35

_llgo_1:                                          ; preds = %_llgo_5
  %2 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %12, 0, !dbg !35
  %.fca.0.extract19 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %2, 0, !dbg !35
  %.fca.1.extract20 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %2, 1, !dbg !35
  %3 = tail call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(ptr %.fca.0.extract19, ptr %.fca.1.extract20), !dbg !35
  %4 = getelementptr i8, ptr %.fca.0.extract19, i64 24, !dbg !35
  %5 = load ptr, ptr %4, align 8, !dbg !35
  %6 = tail call { ptr, i64 } %5(ptr %3), !dbg !35
  %.fca.0.extract23 = extractvalue { ptr, i64 } %6, 0, !dbg !35
  %.fca.1.extract24 = extractvalue { ptr, i64 } %6, 1, !dbg !35
  tail call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(ptr nonnull @7, i64 7), !dbg !35
  tail call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32), !dbg !35
  tail call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(ptr %.fca.0.extract23, i64 %.fca.1.extract24), !dbg !35
  tail call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10), !dbg !35
  br label %_llgo_2, !dbg !35

_llgo_2:                                          ; preds = %_llgo_5, %_llgo_1
  ret void, !dbg !35

_llgo_3:                                          ; preds = %_llgo_0
  %.fca.1.extract12 = extractvalue { ptr, ptr } %0, 1, !dbg !35
  %7 = tail call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr nonnull @"_llgo_iface$Fh8eUJ-Gw4e6TYuajcFIOSCuqSPKAt5nS4ow7xeGXEU", ptr %.fca.0.extract11), !dbg !35
  %8 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %7, 0, !dbg !35
  %9 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %8, ptr %.fca.1.extract12, 1, !dbg !35
  %10 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } undef, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %9, 0, !dbg !35
  %11 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %10, i1 true, 1, !dbg !35
  br label %_llgo_5, !dbg !35

_llgo_5:                                          ; preds = %_llgo_0, %_llgo_3
  %12 = phi { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } [ %11, %_llgo_3 ], [ zeroinitializer, %_llgo_0 ], !dbg !35
  %13 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %12, 1, !dbg !35
  br i1 %13, label %_llgo_1, label %_llgo_2, !dbg !35
}

define void @command-line-arguments.main() local_unnamed_addr !dbg !45 {
_llgo_0:
  tail call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(ptr nonnull @8, i64 4), !dbg !46
  tail call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10), !dbg !46
  ret void, !dbg !47
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8) local_unnamed_addr

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.GetThreadDefer"() local_unnamed_addr

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64) local_unnamed_addr

declare void @"github.com/goplus/llgo/runtime/internal/runtime.SetThreadDefer"(ptr) local_unnamed_addr

; Function Attrs: returns_twice
declare i32 @__sigsetjmp(ptr, i32) local_unnamed_addr #1

declare void @"github.com/goplus/llgo/runtime/internal/runtime.Rethrow"(ptr) local_unnamed_addr

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64) local_unnamed_addr

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.interequal"(ptr, ptr) local_unnamed_addr

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.interequal"(ptr %1, ptr %2)
  ret i1 %3
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr, ptr) local_unnamed_addr

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr %1, ptr %2)
  ret i1 %3
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr, ptr) local_unnamed_addr

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr %1, ptr %2)
  ret i1 %3
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.Implements"(ptr, ptr) local_unnamed_addr

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr, ptr) local_unnamed_addr

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(ptr, i64) local_unnamed_addr

declare { ptr, ptr } @"github.com/goplus/llgo/runtime/internal/runtime.Recover"() local_unnamed_addr

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(ptr, ptr) local_unnamed_addr

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) }
attributes #1 = { returns_twice }

!llvm.module.flags = !{!7, !8, !9, !10, !11, !12}
!llvm.ident = !{!13}
!llvm.dbg.cu = !{!2}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "init$guard", linkageName: "init$guard", scope: !2, file: !4, type: !5, isLocal: false, isDefinition: true, align: 64)
!2 = distinct !DICompileUnit(language: DW_LANG_C, file: !3, producer: "LLGo", isOptimized: true, runtimeVersion: 1, emissionKind: FullDebug)
!3 = !DIFile(filename: "main", directory: "command-line-arguments")
!4 = !DIFile(filename: "", directory: "")
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*bool", baseType: !6, size: 64, align: 64, dwarfAddressSpace: 0)
!6 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 7, !"Dwarf Version", i32 4}
!9 = !{i32 1, !"wchar_size", i32 4}
!10 = !{i32 8, !"PIC Level", i32 2}
!11 = !{i32 7, !"uwtable", i32 1}
!12 = !{i32 7, !"frame-pointer", i32 1}
!13 = !{!"LLGo Compiler"}
!14 = distinct !DISubprogram(name: "command-line-arguments.f", linkageName: "command-line-arguments.f", scope: !15, file: !15, line: 7, type: !16, scopeLine: 7, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!15 = !DIFile(filename: "in.go", directory: "/opt/data/00.Code/goplus/llgo/cl/_testgo/sigsegv/")
!16 = !DISubroutineType(types: !17)
!17 = !{!18}
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*command-line-arguments.T", baseType: !19, size: 64, align: 64, dwarfAddressSpace: 0)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "command-line-arguments.T", file: !15, line: 7, baseType: !20, align: 64)
!20 = !DICompositeType(tag: DW_TAG_structure_type, name: "struct{s int}", scope: !15, file: !15, line: 7, size: 64, align: 64, elements: !21)
!21 = !{!22}
!22 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !20, baseType: !23, size: 64, align: 64)
!23 = !DIBasicType(name: "int", size: 64, encoding: DW_ATE_signed)
!24 = !DILocation(line: 8, column: 2, scope: !14)
!25 = distinct !DISubprogram(name: "command-line-arguments.init", linkageName: "command-line-arguments.init", scope: !4, file: !4, type: !26, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!26 = !DISubroutineType(types: !27)
!27 = !{null}
!28 = !DILocation(line: 0, scope: !25)
!29 = distinct !DISubprogram(name: "command-line-arguments.init#1", linkageName: "command-line-arguments.init#1", scope: !15, file: !15, line: 11, type: !26, scopeLine: 11, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!30 = !DILocation(line: 11, column: 1, scope: !29)
!31 = !DILocation(line: 13, column: 2, scope: !29)
!32 = !DILocation(line: 19, column: 2, scope: !29)
!33 = !DILocation(line: 19, column: 10, scope: !29)
!34 = distinct !DISubprogram(name: "command-line-arguments.init#1$1", linkageName: "command-line-arguments.init#1$1", scope: !15, file: !15, line: 13, type: !26, scopeLine: 13, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!35 = !DILocation(line: 13, column: 8, scope: !34)
!36 = !DILocalVariable(name: "r", scope: !34, file: !15, line: 14, type: !37)
!37 = !DICompositeType(tag: DW_TAG_structure_type, name: "any", scope: !4, file: !4, size: 128, align: 64, elements: !38)
!38 = !{!39, !42}
!39 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !40, baseType: !41, size: 64, align: 64)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "github.com/goplus/llgo/runtime/internal/runtime.iface", file: !4, baseType: !37, align: 64)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "unsafe.Pointer", baseType: null, size: 64, align: 64, dwarfAddressSpace: 0)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !40, baseType: !41, size: 64, align: 64, offset: 64)
!43 = !DILocation(line: 14, column: 3, scope: !34)
!44 = !DILocation(line: 15, column: 15, scope: !34)
!45 = distinct !DISubprogram(name: "command-line-arguments.main", linkageName: "command-line-arguments.main", scope: !15, file: !15, line: 22, type: !26, scopeLine: 22, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!46 = !DILocation(line: 22, column: 1, scope: !45)
!47 = !DILocation(line: 23, column: 2, scope: !45)

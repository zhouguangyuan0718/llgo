; ModuleID = 'command-line-arguments'
source_filename = "command-line-arguments"

%"github.com/goplus/llgo/runtime/abi.InterfaceType" = type { %"github.com/goplus/llgo/runtime/abi.Type", %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.Slice" }
%"github.com/goplus/llgo/runtime/abi.Type" = type { i64, i64, i32, i8, i8, i8, i8, { ptr, ptr }, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/runtime/abi.PtrType" = type { %"github.com/goplus/llgo/runtime/abi.Type", ptr }
%"github.com/goplus/llgo/runtime/abi.FuncType" = type { %"github.com/goplus/llgo/runtime/abi.Type", %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.Slice" }
%"github.com/goplus/llgo/runtime/abi.Imethod" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.Defer" = type { ptr, i64, ptr, ptr, ptr, ptr }
%command-line-arguments.T = type { i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.iface" = type { ptr, ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }

@"command-line-arguments.init$guard" = global i1 false, align 1, !dbg !0
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

define ptr @command-line-arguments.f() !dbg !14 {
_llgo_0:
  ret ptr null, !dbg !24
}

define void @command-line-arguments.init() !dbg !25 {
_llgo_0:
  %0 = load i1, ptr @"command-line-arguments.init$guard", align 1, !dbg !28
  br i1 %0, label %_llgo_2, label %_llgo_1, !dbg !28

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"command-line-arguments.init$guard", align 1, !dbg !28
  call void @"command-line-arguments.init#1"(), !dbg !28
  br label %_llgo_2, !dbg !28

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void, !dbg !28
}

define void @"command-line-arguments.init#1"() !dbg !29 {
_llgo_0:
  %0 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8, !dbg !30
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 4 }, ptr %0, align 8, !dbg !30
  %1 = getelementptr inbounds { ptr, i64 }, ptr %0, i32 0, i32 0, !dbg !30
  %2 = load ptr, ptr %1, align 8, !dbg !30
  %3 = getelementptr inbounds { ptr, i64 }, ptr %0, i32 0, i32 1, !dbg !30
  %4 = load i64, ptr %3, align 4, !dbg !30
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(ptr %2, i64 %4), !dbg !30
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10), !dbg !30
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.GetThreadDefer"(), !dbg !31
  %6 = alloca i8, i64 200, align 1, !dbg !31
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 48), !dbg !31
  %8 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %7, i32 0, i32 0, !dbg !31
  store ptr %6, ptr %8, align 8, !dbg !31
  %9 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %7, i32 0, i32 1, !dbg !31
  store i64 0, ptr %9, align 4, !dbg !31
  %10 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %7, i32 0, i32 2, !dbg !31
  store ptr %5, ptr %10, align 8, !dbg !31
  %11 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %7, i32 0, i32 3, !dbg !31
  store ptr blockaddress(@"command-line-arguments.init#1", %_llgo_2), ptr %11, align 8, !dbg !31
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetThreadDefer"(ptr %7), !dbg !31
  %12 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %7, i32 0, i32 1, !dbg !31
  %13 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %7, i32 0, i32 3, !dbg !31
  %14 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %7, i32 0, i32 4, !dbg !31
  %15 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %7, i32 0, i32 5, !dbg !31
  store ptr null, ptr %15, align 8, !dbg !31
  %16 = call i32 @__sigsetjmp(ptr %6, i32 0), !dbg !31
  %17 = icmp eq i32 %16, 0, !dbg !31
  br i1 %17, label %_llgo_4, label %_llgo_5, !dbg !31

_llgo_1:                                          ; preds = %_llgo_3
  ret void, !dbg !32

_llgo_2:                                          ; preds = %_llgo_5, %_llgo_4
  store ptr blockaddress(@"command-line-arguments.init#1", %_llgo_3), ptr %13, align 8, !dbg !32
  %18 = load i64, ptr %12, align 4, !dbg !32
  call void @"command-line-arguments.init#1$1"(), !dbg !32
  %19 = load %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %7, align 8, !dbg !32
  %20 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Defer" %19, 2, !dbg !32
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetThreadDefer"(ptr %20), !dbg !32
  %21 = load ptr, ptr %14, align 8, !dbg !32
  indirectbr ptr %21, [label %_llgo_3, label %_llgo_6], !dbg !32

_llgo_3:                                          ; preds = %_llgo_5, %_llgo_2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Rethrow"(ptr %5), !dbg !31
  br label %_llgo_1, !dbg !31

_llgo_4:                                          ; preds = %_llgo_0
  %22 = call ptr @command-line-arguments.f(), !dbg !33
  %23 = getelementptr inbounds %command-line-arguments.T, ptr %22, i32 0, i32 0, !dbg !33
  %24 = load i64, ptr %23, align 4, !dbg !34
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %24), !dbg !33
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10), !dbg !33
  store ptr blockaddress(@"command-line-arguments.init#1", %_llgo_6), ptr %14, align 8, !dbg !32
  br label %_llgo_2, !dbg !32

_llgo_5:                                          ; preds = %_llgo_0
  store ptr blockaddress(@"command-line-arguments.init#1", %_llgo_3), ptr %14, align 8, !dbg !32
  %25 = load ptr, ptr %13, align 8, !dbg !32
  indirectbr ptr %25, [label %_llgo_3, label %_llgo_2], !dbg !32

_llgo_6:                                          ; preds = %_llgo_2
  ret void, !dbg !32
}

define void @"command-line-arguments.init#1$1"() !dbg !35 {
_llgo_0:
  %0 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8, !dbg !36
  %1 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8, !dbg !36
  %2 = alloca { ptr, i64 }, align 8, !dbg !36
  %3 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8, !dbg !36
  %4 = call { ptr, ptr } @"github.com/goplus/llgo/runtime/internal/runtime.Recover"(), !dbg !36
  %5 = alloca { ptr, ptr }, align 8, !dbg !36
  store { ptr, ptr } %4, ptr %5, align 8, !dbg !36
  %6 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %5, align 8, !dbg !36
  %7 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8, !dbg !36
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %6, ptr %7, align 8, !dbg !36
  %8 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %7, align 8, !dbg !36
    #dbg_value(ptr %7, !37, !DIExpression(DW_OP_deref), !44)
  %9 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8, !dbg !36
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %6, ptr %9, align 8, !dbg !36
  %10 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %9, align 8, !dbg !36
    #dbg_value(ptr %9, !37, !DIExpression(DW_OP_deref), !45)
  %11 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %6, 0, !dbg !36
  %12 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.Implements"(ptr @_llgo_error, ptr %11), !dbg !36
  br i1 %12, label %_llgo_3, label %_llgo_4, !dbg !36

_llgo_1:                                          ; preds = %_llgo_5
  %13 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8, !dbg !36
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %44, ptr %13, align 8, !dbg !36
  %14 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %13, align 8, !dbg !36
    #dbg_value(ptr %13, !46, !DIExpression(DW_OP_deref), !50)
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %44, ptr %3, align 8, !dbg !36
  %15 = getelementptr inbounds { ptr, ptr }, ptr %3, i32 0, i32 0, !dbg !36
  %16 = load ptr, ptr %15, align 8, !dbg !36
  %17 = getelementptr inbounds { ptr, ptr }, ptr %3, i32 0, i32 1, !dbg !36
  %18 = load ptr, ptr %17, align 8, !dbg !36
  %19 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(ptr %16, ptr %18), !dbg !36
  %20 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %44, 0, !dbg !36
  %21 = getelementptr ptr, ptr %20, i64 3, !dbg !36
  %22 = load ptr, ptr %21, align 8, !dbg !36
  %23 = insertvalue { ptr, ptr } undef, ptr %22, 0, !dbg !36
  %24 = insertvalue { ptr, ptr } %23, ptr %19, 1, !dbg !36
  %25 = extractvalue { ptr, ptr } %24, 1, !dbg !36
  %26 = extractvalue { ptr, ptr } %24, 0, !dbg !36
  %27 = call { ptr, i64 } %26(ptr %25), !dbg !36
  store { ptr, i64 } %27, ptr %2, align 8, !dbg !36
  %28 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %2, align 8, !dbg !36
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 7 }, ptr %1, align 8, !dbg !36
  %29 = getelementptr inbounds { ptr, i64 }, ptr %1, i32 0, i32 0, !dbg !36
  %30 = load ptr, ptr %29, align 8, !dbg !36
  %31 = getelementptr inbounds { ptr, i64 }, ptr %1, i32 0, i32 1, !dbg !36
  %32 = load i64, ptr %31, align 4, !dbg !36
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(ptr %30, i64 %32), !dbg !36
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32), !dbg !36
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %28, ptr %0, align 8, !dbg !36
  %33 = getelementptr inbounds { ptr, i64 }, ptr %0, i32 0, i32 0, !dbg !36
  %34 = load ptr, ptr %33, align 8, !dbg !36
  %35 = getelementptr inbounds { ptr, i64 }, ptr %0, i32 0, i32 1, !dbg !36
  %36 = load i64, ptr %35, align 4, !dbg !36
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(ptr %34, i64 %36), !dbg !36
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10), !dbg !36
  br label %_llgo_2, !dbg !36

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_5
  ret void, !dbg !36

_llgo_3:                                          ; preds = %_llgo_0
  %37 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %6, 1, !dbg !36
  %38 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr @"_llgo_iface$Fh8eUJ-Gw4e6TYuajcFIOSCuqSPKAt5nS4ow7xeGXEU", ptr %11), !dbg !36
  %39 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %38, 0, !dbg !36
  %40 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %39, ptr %37, 1, !dbg !36
  %41 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } undef, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %40, 0, !dbg !36
  %42 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %41, i1 true, 1, !dbg !36
  br label %_llgo_5, !dbg !36

_llgo_4:                                          ; preds = %_llgo_0
  br label %_llgo_5, !dbg !36

_llgo_5:                                          ; preds = %_llgo_4, %_llgo_3
  %43 = phi { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } [ %42, %_llgo_3 ], [ zeroinitializer, %_llgo_4 ], !dbg !36
  %44 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %43, 0, !dbg !36
  %45 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8, !dbg !36
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %44, ptr %45, align 8, !dbg !36
  %46 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %45, align 8, !dbg !36
    #dbg_value(ptr %45, !46, !DIExpression(DW_OP_deref), !51)
  %47 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %43, 1, !dbg !36
    #dbg_value(i1 %47, !52, !DIExpression(), !53)
    #dbg_value(i1 %47, !52, !DIExpression(), !54)
  br i1 %47, label %_llgo_1, label %_llgo_2, !dbg !36
}

define void @command-line-arguments.main() !dbg !55 {
_llgo_0:
  %0 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8, !dbg !56
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 4 }, ptr %0, align 8, !dbg !56
  %1 = getelementptr inbounds { ptr, i64 }, ptr %0, i32 0, i32 0, !dbg !56
  %2 = load ptr, ptr %1, align 8, !dbg !56
  %3 = getelementptr inbounds { ptr, i64 }, ptr %0, i32 0, i32 1, !dbg !56
  %4 = load i64, ptr %3, align 4, !dbg !56
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(ptr %2, i64 %4), !dbg !56
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10), !dbg !56
  ret void, !dbg !57
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.GetThreadDefer"()

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.SetThreadDefer"(ptr)

; Function Attrs: returns_twice
declare i32 @__sigsetjmp(ptr, i32) #0

declare void @"github.com/goplus/llgo/runtime/internal/runtime.Rethrow"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.interequal"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.interequal"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.interequal"(ptr %1, ptr %2)
  ret i1 %3
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr %1, ptr %2)
  ret i1 %3
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr %1, ptr %2)
  ret i1 %3
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.Implements"(ptr, ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr, ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(ptr, i64)

declare { ptr, ptr } @"github.com/goplus/llgo/runtime/internal/runtime.Recover"()

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(ptr, ptr)

attributes #0 = { returns_twice }

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
!34 = !DILocation(line: 19, column: 14, scope: !29)
!35 = distinct !DISubprogram(name: "command-line-arguments.init#1$1", linkageName: "command-line-arguments.init#1$1", scope: !15, file: !15, line: 13, type: !26, scopeLine: 13, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!36 = !DILocation(line: 13, column: 8, scope: !35)
!37 = !DILocalVariable(name: "r", scope: !35, file: !15, line: 14, type: !38)
!38 = !DICompositeType(tag: DW_TAG_structure_type, name: "any", scope: !4, file: !4, size: 128, align: 64, elements: !39)
!39 = !{!40, !43}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !41, baseType: !42, size: 64, align: 64)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "github.com/goplus/llgo/runtime/internal/runtime.iface", file: !4, baseType: !38, align: 64)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "unsafe.Pointer", baseType: null, size: 64, align: 64, dwarfAddressSpace: 0)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !41, baseType: !42, size: 64, align: 64, offset: 64)
!44 = !DILocation(line: 14, column: 3, scope: !35)
!45 = !DILocation(line: 15, column: 15, scope: !35)
!46 = !DILocalVariable(name: "e", scope: !47, file: !15, line: 15, type: !48)
!47 = distinct !DILexicalBlock(scope: !35, file: !15, line: 15, column: 3)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "error", file: !15, line: 15, baseType: !49, align: 64)
!49 = !DICompositeType(tag: DW_TAG_structure_type, name: "interface{Error() string}", scope: !4, file: !4, size: 128, align: 64, elements: !39)
!50 = !DILocation(line: 16, column: 23, scope: !47)
!51 = !DILocation(line: 15, column: 6, scope: !47)
!52 = !DILocalVariable(name: "ok", scope: !47, file: !15, line: 15, type: !6)
!53 = !DILocation(line: 15, column: 9, scope: !47)
!54 = !DILocation(line: 15, column: 26, scope: !47)
!55 = distinct !DISubprogram(name: "command-line-arguments.main", linkageName: "command-line-arguments.main", scope: !15, file: !15, line: 22, type: !26, scopeLine: 22, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!56 = !DILocation(line: 22, column: 1, scope: !55)
!57 = !DILocation(line: 23, column: 2, scope: !55)

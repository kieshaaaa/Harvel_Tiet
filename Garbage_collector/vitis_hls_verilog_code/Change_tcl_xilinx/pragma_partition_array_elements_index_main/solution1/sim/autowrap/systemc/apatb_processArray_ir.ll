; ModuleID = '/home/virubuntu/Change_tcl_xilinx/pragma_partition_array_elements_index_main/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

; Function Attrs: inaccessiblememonly nounwind
declare void @llvm.sideeffect() #0

; Function Attrs: noinline
define void @apatb_processArray_ir(i32* noalias nocapture nonnull "fpga.decayed.dim.hint"="6" %arr) local_unnamed_addr #1 {
entry:
  %arr_copy_0 = alloca [3 x i32], align 512
  %arr_copy_1 = alloca [3 x i32], align 512
  %0 = bitcast i32* %arr to [6 x i32]*
  call void @copy_in([6 x i32]* nonnull %0, [3 x i32]* nonnull align 512 %arr_copy_0, [3 x i32]* nonnull align 512 %arr_copy_1)
  %arr_copy.gep_0 = getelementptr [3 x i32], [3 x i32]* %arr_copy_0, i64 0, i32 0
  %arr_copy.gep_1 = getelementptr [3 x i32], [3 x i32]* %arr_copy_1, i64 0, i32 0
  call void @llvm.sideeffect() #7 [ "xlx_array_partition"(i32* %arr_copy.gep_0, i32 998, i32 1, i32 0, i1 false) ], !dbg !13
  call void @llvm.sideeffect() #7 [ "xlx_array_partition"(i32* %arr_copy.gep_1, i32 998, i32 1, i32 0, i1 false) ], !dbg !13
  call void @apatb_processArray_hw([3 x i32]* %arr_copy_0, [3 x i32]* %arr_copy_1)
  call void @copy_back([6 x i32]* %0, [3 x i32]* %arr_copy_0, [3 x i32]* %arr_copy_1)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.assume(i1) #2

; Function Attrs: argmemonly noinline norecurse
define internal void @onebyonecpy_hls.p0a6i32.3.4([3 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.0" %_0, [3 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.1" %_1, [6 x i32]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1") #3 {
entry:
  %1 = icmp eq [3 x i32]* %_0, null
  %2 = icmp eq [6 x i32]* %0, null
  %3 = or i1 %1, %2
  br i1 %3, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %dst.addr.exit, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %dst.addr.exit ]
  %4 = urem i64 %for.loop.idx1, 2
  %5 = udiv i64 %for.loop.idx1, 2
  %dst.addr_0 = getelementptr [3 x i32], [3 x i32]* %_0, i64 0, i64 %5
  %dst.addr_1 = getelementptr [3 x i32], [3 x i32]* %_1, i64 0, i64 %5
  %src.addr = getelementptr [6 x i32], [6 x i32]* %0, i64 0, i64 %for.loop.idx1
  %6 = load i32, i32* %src.addr, align 4
  %7 = trunc i64 %4 to i1
  %cond = icmp eq i1 %7, false
  br i1 %cond, label %dst.addr.case.0, label %dst.addr.case.1

dst.addr.case.0:                                  ; preds = %for.loop
  store i32 %6, i32* %dst.addr_0, align 4
  br label %dst.addr.exit

dst.addr.case.1:                                  ; preds = %for.loop
  call void @llvm.assume(i1 %7)
  store i32 %6, i32* %dst.addr_1, align 4
  br label %dst.addr.exit

dst.addr.exit:                                    ; preds = %dst.addr.case.1, %dst.addr.case.0
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 6
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %dst.addr.exit, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @copy_in([6 x i32]* noalias readonly "orig.arg.no"="0", [3 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.0" %_0, [3 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.1" %_1) #4 {
entry:
  call void @onebyonecpy_hls.p0a6i32.3.4([3 x i32]* align 512 %_0, [3 x i32]* align 512 %_1, [6 x i32]* %0)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @onebyonecpy_hls.p0a6i32.9.10([6 x i32]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0", [3 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.0" %_0, [3 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.1" %_1) #3 {
entry:
  %1 = icmp eq [6 x i32]* %0, null
  %2 = icmp eq [3 x i32]* %_0, null
  %3 = or i1 %1, %2
  br i1 %3, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %src.addr.exit, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %src.addr.exit ]
  %dst.addr = getelementptr [6 x i32], [6 x i32]* %0, i64 0, i64 %for.loop.idx1
  %4 = urem i64 %for.loop.idx1, 2
  %5 = udiv i64 %for.loop.idx1, 2
  %src.addr_0 = getelementptr [3 x i32], [3 x i32]* %_0, i64 0, i64 %5
  %src.addr_1 = getelementptr [3 x i32], [3 x i32]* %_1, i64 0, i64 %5
  %6 = trunc i64 %4 to i1
  %cond = icmp eq i1 %6, false
  br i1 %cond, label %src.addr.case.0, label %src.addr.case.1

src.addr.case.0:                                  ; preds = %for.loop
  %_01 = load i32, i32* %src.addr_0, align 4
  br label %src.addr.exit

src.addr.case.1:                                  ; preds = %for.loop
  call void @llvm.assume(i1 %6)
  %_12 = load i32, i32* %src.addr_1, align 4
  br label %src.addr.exit

src.addr.exit:                                    ; preds = %src.addr.case.1, %src.addr.case.0
  %7 = phi i32 [ %_01, %src.addr.case.0 ], [ %_12, %src.addr.case.1 ]
  store i32 %7, i32* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 6
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %src.addr.exit, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @copy_out([6 x i32]* noalias "orig.arg.no"="0", [3 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.0" %_0, [3 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.1" %_1) #5 {
entry:
  call void @onebyonecpy_hls.p0a6i32.9.10([6 x i32]* %0, [3 x i32]* align 512 %_0, [3 x i32]* align 512 %_1)
  ret void
}

declare void @apatb_processArray_hw([3 x i32]*, [3 x i32]*)

; Function Attrs: argmemonly noinline norecurse
define internal void @copy_back([6 x i32]* noalias "orig.arg.no"="0", [3 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.0" %_0, [3 x i32]* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.1" %_1) #5 {
entry:
  call void @onebyonecpy_hls.p0a6i32.9.10([6 x i32]* %0, [3 x i32]* align 512 %_0, [3 x i32]* align 512 %_1)
  ret void
}

define void @processArray_hw_stub_wrapper([3 x i32]*, [3 x i32]*) #6 {
entry:
  %2 = alloca [6 x i32]
  call void @copy_out([6 x i32]* %2, [3 x i32]* %0, [3 x i32]* %1)
  %3 = bitcast [6 x i32]* %2 to i32*
  call void @processArray_hw_stub(i32* %3)
  call void @copy_in([6 x i32]* %2, [3 x i32]* %0, [3 x i32]* %1)
  ret void
}

declare void @processArray_hw_stub(i32*)

attributes #0 = { inaccessiblememonly nounwind }
attributes #1 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #2 = { nounwind }
attributes #3 = { argmemonly noinline norecurse "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #4 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyin" }
attributes #5 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyout" }
attributes #6 = { "fpga.wrapper.func"="stub" }
attributes #7 = { inaccessiblememonly nounwind "xlx.source"="user" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}
!datalayout.transforms.on.top = !{!5}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
!5 = !{!6, !8, !10}
!6 = !{!7}
!7 = !{!"0", [6 x i32]* null}
!8 = !{!9}
!9 = !{!"array_partition", !"type=Cyclic", !"dim=1", !"factor=2"}
!10 = !{!11, !12}
!11 = !{!"0.0", [3 x i32]* null}
!12 = !{!"0.1", [3 x i32]* null}
!13 = !DILocation(line: 7, column: 9, scope: !14)
!14 = distinct !DISubprogram(name: "processArray", scope: !15, file: !15, line: 6, type: !16, isLocal: false, isDefinition: true, scopeLine: 6, flags: DIFlagPrototyped, isOptimized: false, unit: !20, variables: !4)
!15 = !DIFile(filename: "../Array_with_pragma/Array/array_elements_index_main_1/array.c", directory: "/home/virubuntu/Change_tcl_xilinx")
!16 = !DISubroutineType(types: !17)
!17 = !{null, !18}
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!20 = distinct !DICompileUnit(language: DW_LANG_C99, file: !21, producer: "clang version 7.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!21 = !DIFile(filename: "/home/virubuntu/Change_tcl_xilinx/pragma_partition_array_elements_index_main/solution1/.autopilot/db/array.pp.0.c", directory: "/home/virubuntu/Change_tcl_xilinx")

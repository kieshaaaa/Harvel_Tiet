; ModuleID = '/home/coss01/vitis_hls_demo_c/matrix_mul/matrix_mul/solution2/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

; Function Attrs: inaccessiblemem_or_argmemonly noinline
define void @apatb_multiplyMatrix_ir([3 x i32]* noalias nocapture nonnull readonly %mat1, [3 x i32]* noalias nocapture nonnull readonly %mat2, [3 x i32]* noalias nocapture nonnull %result) local_unnamed_addr #0 {
entry:
  %mat1_copy_0 = alloca i32, align 512
  %mat1_copy_1 = alloca i32, align 512
  %mat1_copy_2 = alloca i32, align 512
  %mat2_copy = alloca [3 x i32], align 512
  %result_copy_0 = alloca i32, align 512
  %result_copy_1 = alloca i32, align 512
  %result_copy_2 = alloca i32, align 512
  call void @copy_in([3 x i32]* nonnull %mat1, i32* nonnull align 512 %mat1_copy_0, i32* nonnull align 512 %mat1_copy_1, i32* nonnull align 512 %mat1_copy_2, [3 x i32]* nonnull %mat2, [3 x i32]* nonnull align 512 %mat2_copy, [3 x i32]* nonnull %result, i32* nonnull align 512 %result_copy_0, i32* nonnull align 512 %result_copy_1, i32* nonnull align 512 %result_copy_2)
  call void @apatb_multiplyMatrix_hw(i32* %mat1_copy_0, i32* %mat1_copy_1, i32* %mat1_copy_2, [3 x i32]* %mat2_copy, i32* %result_copy_0, i32* %result_copy_1, i32* %result_copy_2)
  call void @copy_back([3 x i32]* %mat1, i32* %mat1_copy_0, i32* %mat1_copy_1, i32* %mat1_copy_2, [3 x i32]* %mat2, [3 x i32]* %mat2_copy, [3 x i32]* %result, i32* %result_copy_0, i32* %result_copy_1, i32* %result_copy_2)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a3i32([3 x i32]* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0", [3 x i32]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1") unnamed_addr #1 {
entry:
  %2 = icmp eq [3 x i32]* %0, null
  %3 = icmp eq [3 x i32]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [3 x i32], [3 x i32]* %0, i64 0, i64 %for.loop.idx1
  %src.addr = getelementptr [3 x i32], [3 x i32]* %1, i64 0, i64 %for.loop.idx1
  %5 = load i32, i32* %src.addr, align 4
  store i32 %5, i32* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 3
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: nounwind
declare void @llvm.assume(i1) #2

; Function Attrs: argmemonly noinline norecurse
define internal void @onebyonecpy_hls.p0a3i32.2.3(i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.0" %_0, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.1" %_1, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.2" %_2, [3 x i32]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1") #1 {
entry:
  %1 = icmp eq i32* %_0, null
  %2 = icmp eq [3 x i32]* %0, null
  %3 = or i1 %1, %2
  br i1 %3, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %dst.addr.exit, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %dst.addr.exit ]
  %src.addr = getelementptr [3 x i32], [3 x i32]* %0, i64 0, i64 %for.loop.idx1
  %4 = load i32, i32* %src.addr, align 4
  %5 = trunc i64 %for.loop.idx1 to i2
  switch i2 %5, label %dst.addr.case.2 [
    i2 0, label %dst.addr.case.0
    i2 1, label %dst.addr.case.1
  ]

dst.addr.case.0:                                  ; preds = %for.loop
  store i32 %4, i32* %_0, align 512
  br label %dst.addr.exit

dst.addr.case.1:                                  ; preds = %for.loop
  store i32 %4, i32* %_1, align 512
  br label %dst.addr.exit

dst.addr.case.2:                                  ; preds = %for.loop
  %6 = icmp eq i2 %5, -2
  call void @llvm.assume(i1 %6)
  store i32 %4, i32* %_2, align 512
  br label %dst.addr.exit

dst.addr.exit:                                    ; preds = %dst.addr.case.2, %dst.addr.case.1, %dst.addr.case.0
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 3
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %dst.addr.exit, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @copy_in([3 x i32]* noalias readonly "orig.arg.no"="0", i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.0" %_0, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.1" %_1, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.2" %_2, [3 x i32]* noalias readonly "orig.arg.no"="2", [3 x i32]* noalias align 512 "orig.arg.no"="3", [3 x i32]* noalias readonly "orig.arg.no"="4", i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.0" %_01, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.1" %_12, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.2" %_23) #3 {
entry:
  call void @onebyonecpy_hls.p0a3i32.2.3(i32* align 512 %_0, i32* align 512 %_1, i32* align 512 %_2, [3 x i32]* %0)
  call fastcc void @onebyonecpy_hls.p0a3i32([3 x i32]* align 512 %2, [3 x i32]* %1)
  call void @onebyonecpy_hls.p0a3i32.2.3(i32* align 512 %_01, i32* align 512 %_12, i32* align 512 %_23, [3 x i32]* %3)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @onebyonecpy_hls.p0a3i32.8.9([3 x i32]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0", i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.0" %_0, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.1" %_1, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.2" %_2) #1 {
entry:
  %1 = icmp eq [3 x i32]* %0, null
  %2 = icmp eq i32* %_0, null
  %3 = or i1 %1, %2
  br i1 %3, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %src.addr.exit, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %src.addr.exit ]
  %dst.addr = getelementptr [3 x i32], [3 x i32]* %0, i64 0, i64 %for.loop.idx1
  %4 = trunc i64 %for.loop.idx1 to i2
  switch i2 %4, label %src.addr.case.2 [
    i2 0, label %src.addr.case.0
    i2 1, label %src.addr.case.1
  ]

src.addr.case.0:                                  ; preds = %for.loop
  %_01 = load i32, i32* %_0, align 512
  br label %src.addr.exit

src.addr.case.1:                                  ; preds = %for.loop
  %_12 = load i32, i32* %_1, align 512
  br label %src.addr.exit

src.addr.case.2:                                  ; preds = %for.loop
  %5 = icmp eq i2 %4, -2
  call void @llvm.assume(i1 %5)
  %_23 = load i32, i32* %_2, align 512
  br label %src.addr.exit

src.addr.exit:                                    ; preds = %src.addr.case.2, %src.addr.case.1, %src.addr.case.0
  %6 = phi i32 [ %_01, %src.addr.case.0 ], [ %_12, %src.addr.case.1 ], [ %_23, %src.addr.case.2 ]
  store i32 %6, i32* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 3
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %src.addr.exit, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @copy_out([3 x i32]* noalias "orig.arg.no"="0", i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.0" %_0, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.1" %_1, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.2" %_2, [3 x i32]* noalias "orig.arg.no"="2", [3 x i32]* noalias readonly align 512 "orig.arg.no"="3", [3 x i32]* noalias "orig.arg.no"="4", i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.0" %_01, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.1" %_12, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.2" %_23) #4 {
entry:
  call void @onebyonecpy_hls.p0a3i32.8.9([3 x i32]* %0, i32* align 512 %_0, i32* align 512 %_1, i32* align 512 %_2)
  call fastcc void @onebyonecpy_hls.p0a3i32([3 x i32]* %1, [3 x i32]* align 512 %2)
  call void @onebyonecpy_hls.p0a3i32.8.9([3 x i32]* %3, i32* align 512 %_01, i32* align 512 %_12, i32* align 512 %_23)
  ret void
}

declare void @apatb_multiplyMatrix_hw(i32*, i32*, i32*, [3 x i32]*, i32*, i32*, i32*)

; Function Attrs: argmemonly noinline norecurse
define internal void @copy_back([3 x i32]* noalias "orig.arg.no"="0", i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.0" %_0, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.1" %_1, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.2" %_2, [3 x i32]* noalias "orig.arg.no"="2", [3 x i32]* noalias readonly align 512 "orig.arg.no"="3", [3 x i32]* noalias "orig.arg.no"="4", i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.0" %_01, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.1" %_12, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.2" %_23) #4 {
entry:
  call void @onebyonecpy_hls.p0a3i32.8.9([3 x i32]* %3, i32* align 512 %_01, i32* align 512 %_12, i32* align 512 %_23)
  ret void
}

define void @multiplyMatrix_hw_stub_wrapper(i32*, i32*, i32*, [3 x i32]*, i32*, i32*, i32*) #5 {
entry:
  %7 = alloca [3 x i32]
  %8 = alloca [3 x i32]
  call void @copy_out([3 x i32]* %7, i32* %0, i32* %1, i32* %2, [3 x i32]* null, [3 x i32]* %3, [3 x i32]* %8, i32* %4, i32* %5, i32* %6)
  call void @multiplyMatrix_hw_stub([3 x i32]* %7, [3 x i32]* %3, [3 x i32]* %8)
  call void @copy_in([3 x i32]* %7, i32* %0, i32* %1, i32* %2, [3 x i32]* null, [3 x i32]* %3, [3 x i32]* %8, i32* %4, i32* %5, i32* %6)
  ret void
}

declare void @multiplyMatrix_hw_stub([3 x i32]*, [3 x i32]*, [3 x i32]*)

attributes #0 = { inaccessiblemem_or_argmemonly noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #2 = { nounwind }
attributes #3 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyin" }
attributes #4 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyout" }
attributes #5 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}
!datalayout.transforms.on.top = !{!5, !14}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
!5 = !{!6, !8, !10}
!6 = !{!7}
!7 = !{!"0", [3 x i32]* null}
!8 = !{!9}
!9 = !{!"array_partition", !"type=Complete", !"dim=1"}
!10 = !{!11, !12, !13}
!11 = !{!"0.0", i32* null}
!12 = !{!"0.1", i32* null}
!13 = !{!"0.2", i32* null}
!14 = !{!15, !8, !17}
!15 = !{!16}
!16 = !{!"2", [3 x i32]* null}
!17 = !{!18, !19, !20}
!18 = !{!"2.0", i32* null}
!19 = !{!"2.1", i32* null}
!20 = !{!"2.2", i32* null}

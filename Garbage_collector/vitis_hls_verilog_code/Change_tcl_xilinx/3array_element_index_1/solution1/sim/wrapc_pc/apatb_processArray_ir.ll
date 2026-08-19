; ModuleID = '/home/virubuntu/Change_tcl_xilinx/3array_element_index_1/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

; Function Attrs: noinline
define void @apatb_processArray_ir(i32* noalias nonnull "fpga.decayed.dim.hint"="5" %arr, i32* noalias nocapture nonnull "fpga.decayed.dim.hint"="5" %arr2, i32* noalias nocapture nonnull "fpga.decayed.dim.hint"="5" %arr3) local_unnamed_addr #0 {
entry:
  %arr_copy_0 = alloca i32, align 512
  %arr_copy_1 = alloca i32, align 512
  %arr_copy_2 = alloca i32, align 512
  %arr_copy_3 = alloca i32, align 512
  %arr_copy_4 = alloca i32, align 512
  %arr2_copy_0 = alloca i32, align 512
  %arr2_copy_1 = alloca i32, align 512
  %arr2_copy_2 = alloca i32, align 512
  %arr2_copy_3 = alloca i32, align 512
  %arr2_copy_4 = alloca i32, align 512
  %arr3_copy_0 = alloca i32, align 512
  %arr3_copy_1 = alloca i32, align 512
  %arr3_copy_2 = alloca i32, align 512
  %arr3_copy_3 = alloca i32, align 512
  %arr3_copy_4 = alloca i32, align 512
  %0 = bitcast i32* %arr to [5 x i32]*
  %1 = bitcast i32* %arr2 to [5 x i32]*
  %2 = bitcast i32* %arr3 to [5 x i32]*
  call void @copy_in([5 x i32]* nonnull %0, i32* nonnull align 512 %arr_copy_0, i32* nonnull align 512 %arr_copy_1, i32* nonnull align 512 %arr_copy_2, i32* nonnull align 512 %arr_copy_3, i32* nonnull align 512 %arr_copy_4, [5 x i32]* nonnull %1, i32* nonnull align 512 %arr2_copy_0, i32* nonnull align 512 %arr2_copy_1, i32* nonnull align 512 %arr2_copy_2, i32* nonnull align 512 %arr2_copy_3, i32* nonnull align 512 %arr2_copy_4, [5 x i32]* nonnull %2, i32* nonnull align 512 %arr3_copy_0, i32* nonnull align 512 %arr3_copy_1, i32* nonnull align 512 %arr3_copy_2, i32* nonnull align 512 %arr3_copy_3, i32* nonnull align 512 %arr3_copy_4)
  call void @apatb_processArray_hw(i32* %arr_copy_0, i32* %arr_copy_1, i32* %arr_copy_2, i32* %arr_copy_3, i32* %arr_copy_4, i32* %arr2_copy_0, i32* %arr2_copy_1, i32* %arr2_copy_2, i32* %arr2_copy_3, i32* %arr2_copy_4, i32* %arr3_copy_0, i32* %arr3_copy_1, i32* %arr3_copy_2, i32* %arr3_copy_3, i32* %arr3_copy_4)
  call void @copy_back([5 x i32]* %0, i32* %arr_copy_0, i32* %arr_copy_1, i32* %arr_copy_2, i32* %arr_copy_3, i32* %arr_copy_4, [5 x i32]* %1, i32* %arr2_copy_0, i32* %arr2_copy_1, i32* %arr2_copy_2, i32* %arr2_copy_3, i32* %arr2_copy_4, [5 x i32]* %2, i32* %arr3_copy_0, i32* %arr3_copy_1, i32* %arr3_copy_2, i32* %arr3_copy_3, i32* %arr3_copy_4)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.assume(i1) #1

; Function Attrs: argmemonly noinline norecurse
define internal void @onebyonecpy_hls.p0a5i32.3.4(i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.0" %_0, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.1" %_1, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.2" %_2, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.3" %_3, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.4" %_4, [5 x i32]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1") #2 {
entry:
  %1 = icmp eq i32* %_0, null
  %2 = icmp eq [5 x i32]* %0, null
  %3 = or i1 %1, %2
  br i1 %3, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %dst.addr.exit, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %dst.addr.exit ]
  %src.addr = getelementptr [5 x i32], [5 x i32]* %0, i64 0, i64 %for.loop.idx1
  %4 = load i32, i32* %src.addr, align 4
  %5 = trunc i64 %for.loop.idx1 to i3
  switch i3 %5, label %dst.addr.case.4 [
    i3 0, label %dst.addr.case.0
    i3 1, label %dst.addr.case.1
    i3 2, label %dst.addr.case.2
    i3 3, label %dst.addr.case.3
  ]

dst.addr.case.0:                                  ; preds = %for.loop
  store i32 %4, i32* %_0, align 512
  br label %dst.addr.exit

dst.addr.case.1:                                  ; preds = %for.loop
  store i32 %4, i32* %_1, align 512
  br label %dst.addr.exit

dst.addr.case.2:                                  ; preds = %for.loop
  store i32 %4, i32* %_2, align 512
  br label %dst.addr.exit

dst.addr.case.3:                                  ; preds = %for.loop
  store i32 %4, i32* %_3, align 512
  br label %dst.addr.exit

dst.addr.case.4:                                  ; preds = %for.loop
  %6 = icmp eq i3 %5, -4
  call void @llvm.assume(i1 %6)
  store i32 %4, i32* %_4, align 512
  br label %dst.addr.exit

dst.addr.exit:                                    ; preds = %dst.addr.case.4, %dst.addr.case.3, %dst.addr.case.2, %dst.addr.case.1, %dst.addr.case.0
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 5
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %dst.addr.exit, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @copy_in([5 x i32]* noalias readonly "orig.arg.no"="0", i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.0" %_0, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.1" %_1, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.2" %_2, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.3" %_3, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.4" %_4, [5 x i32]* noalias readonly "orig.arg.no"="2", i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.0" %_01, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.1" %_12, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.2" %_23, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.3" %_34, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.4" %_45, [5 x i32]* noalias readonly "orig.arg.no"="4", i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.0" %_06, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.1" %_17, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.2" %_28, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.3" %_39, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.4" %_410) #3 {
entry:
  call void @onebyonecpy_hls.p0a5i32.3.4(i32* align 512 %_0, i32* align 512 %_1, i32* align 512 %_2, i32* align 512 %_3, i32* align 512 %_4, [5 x i32]* %0)
  call void @onebyonecpy_hls.p0a5i32.3.4(i32* align 512 %_01, i32* align 512 %_12, i32* align 512 %_23, i32* align 512 %_34, i32* align 512 %_45, [5 x i32]* %1)
  call void @onebyonecpy_hls.p0a5i32.3.4(i32* align 512 %_06, i32* align 512 %_17, i32* align 512 %_28, i32* align 512 %_39, i32* align 512 %_410, [5 x i32]* %2)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @onebyonecpy_hls.p0a5i32.9.10([5 x i32]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0", i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.0" %_0, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.1" %_1, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.2" %_2, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.3" %_3, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.4" %_4) #2 {
entry:
  %1 = icmp eq [5 x i32]* %0, null
  %2 = icmp eq i32* %_0, null
  %3 = or i1 %1, %2
  br i1 %3, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %src.addr.exit, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %src.addr.exit ]
  %dst.addr = getelementptr [5 x i32], [5 x i32]* %0, i64 0, i64 %for.loop.idx1
  %4 = trunc i64 %for.loop.idx1 to i3
  switch i3 %4, label %src.addr.case.4 [
    i3 0, label %src.addr.case.0
    i3 1, label %src.addr.case.1
    i3 2, label %src.addr.case.2
    i3 3, label %src.addr.case.3
  ]

src.addr.case.0:                                  ; preds = %for.loop
  %_01 = load i32, i32* %_0, align 512
  br label %src.addr.exit

src.addr.case.1:                                  ; preds = %for.loop
  %_12 = load i32, i32* %_1, align 512
  br label %src.addr.exit

src.addr.case.2:                                  ; preds = %for.loop
  %_23 = load i32, i32* %_2, align 512
  br label %src.addr.exit

src.addr.case.3:                                  ; preds = %for.loop
  %_34 = load i32, i32* %_3, align 512
  br label %src.addr.exit

src.addr.case.4:                                  ; preds = %for.loop
  %5 = icmp eq i3 %4, -4
  call void @llvm.assume(i1 %5)
  %_45 = load i32, i32* %_4, align 512
  br label %src.addr.exit

src.addr.exit:                                    ; preds = %src.addr.case.4, %src.addr.case.3, %src.addr.case.2, %src.addr.case.1, %src.addr.case.0
  %6 = phi i32 [ %_01, %src.addr.case.0 ], [ %_12, %src.addr.case.1 ], [ %_23, %src.addr.case.2 ], [ %_34, %src.addr.case.3 ], [ %_45, %src.addr.case.4 ]
  store i32 %6, i32* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 5
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %src.addr.exit, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @copy_out([5 x i32]* noalias "orig.arg.no"="0", i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.0" %_0, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.1" %_1, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.2" %_2, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.3" %_3, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.4" %_4, [5 x i32]* noalias "orig.arg.no"="2", i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.0" %_01, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.1" %_12, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.2" %_23, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.3" %_34, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.4" %_45, [5 x i32]* noalias "orig.arg.no"="4", i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.0" %_06, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.1" %_17, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.2" %_28, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.3" %_39, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.4" %_410) #4 {
entry:
  call void @onebyonecpy_hls.p0a5i32.9.10([5 x i32]* %0, i32* align 512 %_0, i32* align 512 %_1, i32* align 512 %_2, i32* align 512 %_3, i32* align 512 %_4)
  call void @onebyonecpy_hls.p0a5i32.9.10([5 x i32]* %1, i32* align 512 %_01, i32* align 512 %_12, i32* align 512 %_23, i32* align 512 %_34, i32* align 512 %_45)
  call void @onebyonecpy_hls.p0a5i32.9.10([5 x i32]* %2, i32* align 512 %_06, i32* align 512 %_17, i32* align 512 %_28, i32* align 512 %_39, i32* align 512 %_410)
  ret void
}

declare void @apatb_processArray_hw(i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*)

; Function Attrs: argmemonly noinline norecurse
define internal void @copy_back([5 x i32]* noalias "orig.arg.no"="0", i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.0" %_0, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.1" %_1, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.2" %_2, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.3" %_3, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.4" %_4, [5 x i32]* noalias "orig.arg.no"="2", i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.0" %_01, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.1" %_12, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.2" %_23, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.3" %_34, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.4" %_45, [5 x i32]* noalias "orig.arg.no"="4", i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.0" %_06, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.1" %_17, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.2" %_28, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.3" %_39, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.4" %_410) #4 {
entry:
  call void @onebyonecpy_hls.p0a5i32.9.10([5 x i32]* %0, i32* align 512 %_0, i32* align 512 %_1, i32* align 512 %_2, i32* align 512 %_3, i32* align 512 %_4)
  call void @onebyonecpy_hls.p0a5i32.9.10([5 x i32]* %1, i32* align 512 %_01, i32* align 512 %_12, i32* align 512 %_23, i32* align 512 %_34, i32* align 512 %_45)
  call void @onebyonecpy_hls.p0a5i32.9.10([5 x i32]* %2, i32* align 512 %_06, i32* align 512 %_17, i32* align 512 %_28, i32* align 512 %_39, i32* align 512 %_410)
  ret void
}

define void @processArray_hw_stub_wrapper(i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #5 {
entry:
  %15 = alloca [5 x i32]
  %16 = alloca [5 x i32]
  %17 = alloca [5 x i32]
  call void @copy_out([5 x i32]* %15, i32* %0, i32* %1, i32* %2, i32* %3, i32* %4, [5 x i32]* %16, i32* %5, i32* %6, i32* %7, i32* %8, i32* %9, [5 x i32]* %17, i32* %10, i32* %11, i32* %12, i32* %13, i32* %14)
  %18 = bitcast [5 x i32]* %15 to i32*
  %19 = bitcast [5 x i32]* %16 to i32*
  %20 = bitcast [5 x i32]* %17 to i32*
  call void @processArray_hw_stub(i32* %18, i32* %19, i32* %20)
  call void @copy_in([5 x i32]* %15, i32* %0, i32* %1, i32* %2, i32* %3, i32* %4, [5 x i32]* %16, i32* %5, i32* %6, i32* %7, i32* %8, i32* %9, [5 x i32]* %17, i32* %10, i32* %11, i32* %12, i32* %13, i32* %14)
  ret void
}

declare void @processArray_hw_stub(i32*, i32*, i32*)

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { nounwind }
attributes #2 = { argmemonly noinline norecurse "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyin" }
attributes #4 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyout" }
attributes #5 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}
!datalayout.transforms.on.top = !{!5, !16, !25}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
!5 = !{!6, !8, !10}
!6 = !{!7}
!7 = !{!"0", [5 x i32]* null}
!8 = !{!9}
!9 = !{!"array_partition", !"type=Complete", !"dim=1"}
!10 = !{!11, !12, !13, !14, !15}
!11 = !{!"0.0", i32* null}
!12 = !{!"0.1", i32* null}
!13 = !{!"0.2", i32* null}
!14 = !{!"0.3", i32* null}
!15 = !{!"0.4", i32* null}
!16 = !{!17, !8, !19}
!17 = !{!18}
!18 = !{!"1", [5 x i32]* null}
!19 = !{!20, !21, !22, !23, !24}
!20 = !{!"1.0", i32* null}
!21 = !{!"1.1", i32* null}
!22 = !{!"1.2", i32* null}
!23 = !{!"1.3", i32* null}
!24 = !{!"1.4", i32* null}
!25 = !{!26, !8, !28}
!26 = !{!27}
!27 = !{!"2", [5 x i32]* null}
!28 = !{!29, !30, !31, !32, !33}
!29 = !{!"2.0", i32* null}
!30 = !{!"2.1", i32* null}
!31 = !{!"2.2", i32* null}
!32 = !{!"2.3", i32* null}
!33 = !{!"2.4", i32* null}

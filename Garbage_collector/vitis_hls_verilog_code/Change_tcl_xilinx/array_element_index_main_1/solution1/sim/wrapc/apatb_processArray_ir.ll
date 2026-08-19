; ModuleID = '/home/virubuntu/Change_tcl_xilinx/array_element_index_main_1/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

; Function Attrs: noinline
define void @apatb_processArray_ir(i32* noalias nocapture nonnull "fpga.decayed.dim.hint"="6" %arr) local_unnamed_addr #0 {
entry:
  %arr_copy_0 = alloca i32, align 512
  %arr_copy_1 = alloca i32, align 512
  %arr_copy_2 = alloca i32, align 512
  %arr_copy_3 = alloca i32, align 512
  %arr_copy_4 = alloca i32, align 512
  %arr_copy_5 = alloca i32, align 512
  %0 = bitcast i32* %arr to [6 x i32]*
  call void @copy_in([6 x i32]* nonnull %0, i32* nonnull align 512 %arr_copy_0, i32* nonnull align 512 %arr_copy_1, i32* nonnull align 512 %arr_copy_2, i32* nonnull align 512 %arr_copy_3, i32* nonnull align 512 %arr_copy_4, i32* nonnull align 512 %arr_copy_5)
  call void @apatb_processArray_hw(i32* %arr_copy_0, i32* %arr_copy_1, i32* %arr_copy_2, i32* %arr_copy_3, i32* %arr_copy_4, i32* %arr_copy_5)
  call void @copy_back([6 x i32]* %0, i32* %arr_copy_0, i32* %arr_copy_1, i32* %arr_copy_2, i32* %arr_copy_3, i32* %arr_copy_4, i32* %arr_copy_5)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.assume(i1) #1

; Function Attrs: argmemonly noinline norecurse
define internal void @onebyonecpy_hls.p0a6i32.3.4(i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.0" %_0, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.1" %_1, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.2" %_2, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.3" %_3, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.4" %_4, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.5" %_5, [6 x i32]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1") #2 {
entry:
  %1 = icmp eq i32* %_0, null
  %2 = icmp eq [6 x i32]* %0, null
  %3 = or i1 %1, %2
  br i1 %3, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %dst.addr.exit, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %dst.addr.exit ]
  %src.addr = getelementptr [6 x i32], [6 x i32]* %0, i64 0, i64 %for.loop.idx1
  %4 = load i32, i32* %src.addr, align 4
  %5 = trunc i64 %for.loop.idx1 to i3
  switch i3 %5, label %dst.addr.case.5 [
    i3 0, label %dst.addr.case.0
    i3 1, label %dst.addr.case.1
    i3 2, label %dst.addr.case.2
    i3 3, label %dst.addr.case.3
    i3 -4, label %dst.addr.case.4
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
  store i32 %4, i32* %_4, align 512
  br label %dst.addr.exit

dst.addr.case.5:                                  ; preds = %for.loop
  %6 = icmp eq i3 %5, -3
  call void @llvm.assume(i1 %6)
  store i32 %4, i32* %_5, align 512
  br label %dst.addr.exit

dst.addr.exit:                                    ; preds = %dst.addr.case.5, %dst.addr.case.4, %dst.addr.case.3, %dst.addr.case.2, %dst.addr.case.1, %dst.addr.case.0
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 6
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %dst.addr.exit, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @copy_in([6 x i32]* noalias readonly "orig.arg.no"="0", i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.0" %_0, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.1" %_1, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.2" %_2, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.3" %_3, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.4" %_4, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.5" %_5) #3 {
entry:
  call void @onebyonecpy_hls.p0a6i32.3.4(i32* align 512 %_0, i32* align 512 %_1, i32* align 512 %_2, i32* align 512 %_3, i32* align 512 %_4, i32* align 512 %_5, [6 x i32]* %0)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @onebyonecpy_hls.p0a6i32.9.10([6 x i32]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0", i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.0" %_0, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.1" %_1, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.2" %_2, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.3" %_3, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.4" %_4, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.5" %_5) #2 {
entry:
  %1 = icmp eq [6 x i32]* %0, null
  %2 = icmp eq i32* %_0, null
  %3 = or i1 %1, %2
  br i1 %3, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %src.addr.exit, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %src.addr.exit ]
  %dst.addr = getelementptr [6 x i32], [6 x i32]* %0, i64 0, i64 %for.loop.idx1
  %4 = trunc i64 %for.loop.idx1 to i3
  switch i3 %4, label %src.addr.case.5 [
    i3 0, label %src.addr.case.0
    i3 1, label %src.addr.case.1
    i3 2, label %src.addr.case.2
    i3 3, label %src.addr.case.3
    i3 -4, label %src.addr.case.4
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
  %_45 = load i32, i32* %_4, align 512
  br label %src.addr.exit

src.addr.case.5:                                  ; preds = %for.loop
  %5 = icmp eq i3 %4, -3
  call void @llvm.assume(i1 %5)
  %_56 = load i32, i32* %_5, align 512
  br label %src.addr.exit

src.addr.exit:                                    ; preds = %src.addr.case.5, %src.addr.case.4, %src.addr.case.3, %src.addr.case.2, %src.addr.case.1, %src.addr.case.0
  %6 = phi i32 [ %_01, %src.addr.case.0 ], [ %_12, %src.addr.case.1 ], [ %_23, %src.addr.case.2 ], [ %_34, %src.addr.case.3 ], [ %_45, %src.addr.case.4 ], [ %_56, %src.addr.case.5 ]
  store i32 %6, i32* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 6
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %src.addr.exit, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @copy_out([6 x i32]* noalias "orig.arg.no"="0", i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.0" %_0, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.1" %_1, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.2" %_2, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.3" %_3, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.4" %_4, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.5" %_5) #4 {
entry:
  call void @onebyonecpy_hls.p0a6i32.9.10([6 x i32]* %0, i32* align 512 %_0, i32* align 512 %_1, i32* align 512 %_2, i32* align 512 %_3, i32* align 512 %_4, i32* align 512 %_5)
  ret void
}

declare void @apatb_processArray_hw(i32*, i32*, i32*, i32*, i32*, i32*)

; Function Attrs: argmemonly noinline norecurse
define internal void @copy_back([6 x i32]* noalias "orig.arg.no"="0", i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.0" %_0, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.1" %_1, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.2" %_2, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.3" %_3, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.4" %_4, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.5" %_5) #4 {
entry:
  call void @onebyonecpy_hls.p0a6i32.9.10([6 x i32]* %0, i32* align 512 %_0, i32* align 512 %_1, i32* align 512 %_2, i32* align 512 %_3, i32* align 512 %_4, i32* align 512 %_5)
  ret void
}

define void @processArray_hw_stub_wrapper(i32*, i32*, i32*, i32*, i32*, i32*) #5 {
entry:
  %6 = alloca [6 x i32]
  call void @copy_out([6 x i32]* %6, i32* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5)
  %7 = bitcast [6 x i32]* %6 to i32*
  call void @processArray_hw_stub(i32* %7)
  call void @copy_in([6 x i32]* %6, i32* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5)
  ret void
}

declare void @processArray_hw_stub(i32*)

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
!9 = !{!"array_partition", !"type=Complete", !"dim=1"}
!10 = !{!11, !12, !13, !14, !15, !16}
!11 = !{!"0.0", i32* null}
!12 = !{!"0.1", i32* null}
!13 = !{!"0.2", i32* null}
!14 = !{!"0.3", i32* null}
!15 = !{!"0.4", i32* null}
!16 = !{!"0.5", i32* null}

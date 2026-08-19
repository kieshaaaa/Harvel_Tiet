; ModuleID = '/home/virubuntu/Change_tcl_xilinx/multiple_operator/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

; Function Attrs: noinline
define void @apatb_processArray_ir(i32* noalias nocapture nonnull "fpga.decayed.dim.hint"="12" %arr, i32* noalias nocapture nonnull "fpga.decayed.dim.hint"="10" %arr2, i32* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="10" %arr3) local_unnamed_addr #0 {
entry:
  %arr_copy_0 = alloca i32, align 512
  %arr_copy_1 = alloca i32, align 512
  %arr_copy_2 = alloca i32, align 512
  %arr_copy_3 = alloca i32, align 512
  %arr_copy_4 = alloca i32, align 512
  %arr_copy_5 = alloca i32, align 512
  %arr_copy_6 = alloca i32, align 512
  %arr_copy_7 = alloca i32, align 512
  %arr_copy_8 = alloca i32, align 512
  %arr_copy_9 = alloca i32, align 512
  %arr_copy_10 = alloca i32, align 512
  %arr_copy_11 = alloca i32, align 512
  %arr2_copy_0 = alloca i32, align 512
  %arr2_copy_1 = alloca i32, align 512
  %arr2_copy_2 = alloca i32, align 512
  %arr2_copy_3 = alloca i32, align 512
  %arr2_copy_4 = alloca i32, align 512
  %arr2_copy_5 = alloca i32, align 512
  %arr2_copy_6 = alloca i32, align 512
  %arr2_copy_7 = alloca i32, align 512
  %arr2_copy_8 = alloca i32, align 512
  %arr2_copy_9 = alloca i32, align 512
  %arr3_copy_0 = alloca i32, align 512
  %arr3_copy_1 = alloca i32, align 512
  %arr3_copy_2 = alloca i32, align 512
  %arr3_copy_3 = alloca i32, align 512
  %arr3_copy_4 = alloca i32, align 512
  %arr3_copy_5 = alloca i32, align 512
  %arr3_copy_6 = alloca i32, align 512
  %arr3_copy_7 = alloca i32, align 512
  %arr3_copy_8 = alloca i32, align 512
  %arr3_copy_9 = alloca i32, align 512
  %0 = bitcast i32* %arr to [12 x i32]*
  %1 = bitcast i32* %arr2 to [10 x i32]*
  %2 = bitcast i32* %arr3 to [10 x i32]*
  call void @copy_in([12 x i32]* nonnull %0, i32* nonnull align 512 %arr_copy_0, i32* nonnull align 512 %arr_copy_1, i32* nonnull align 512 %arr_copy_2, i32* nonnull align 512 %arr_copy_3, i32* nonnull align 512 %arr_copy_4, i32* nonnull align 512 %arr_copy_5, i32* nonnull align 512 %arr_copy_6, i32* nonnull align 512 %arr_copy_7, i32* nonnull align 512 %arr_copy_8, i32* nonnull align 512 %arr_copy_9, i32* nonnull align 512 %arr_copy_10, i32* nonnull align 512 %arr_copy_11, [10 x i32]* nonnull %1, i32* nonnull align 512 %arr2_copy_0, i32* nonnull align 512 %arr2_copy_1, i32* nonnull align 512 %arr2_copy_2, i32* nonnull align 512 %arr2_copy_3, i32* nonnull align 512 %arr2_copy_4, i32* nonnull align 512 %arr2_copy_5, i32* nonnull align 512 %arr2_copy_6, i32* nonnull align 512 %arr2_copy_7, i32* nonnull align 512 %arr2_copy_8, i32* nonnull align 512 %arr2_copy_9, [10 x i32]* nonnull %2, i32* nonnull align 512 %arr3_copy_0, i32* nonnull align 512 %arr3_copy_1, i32* nonnull align 512 %arr3_copy_2, i32* nonnull align 512 %arr3_copy_3, i32* nonnull align 512 %arr3_copy_4, i32* nonnull align 512 %arr3_copy_5, i32* nonnull align 512 %arr3_copy_6, i32* nonnull align 512 %arr3_copy_7, i32* nonnull align 512 %arr3_copy_8, i32* nonnull align 512 %arr3_copy_9)
  call void @apatb_processArray_hw(i32* %arr_copy_0, i32* %arr_copy_1, i32* %arr_copy_2, i32* %arr_copy_3, i32* %arr_copy_4, i32* %arr_copy_5, i32* %arr_copy_6, i32* %arr_copy_7, i32* %arr_copy_8, i32* %arr_copy_9, i32* %arr_copy_10, i32* %arr_copy_11, i32* %arr2_copy_0, i32* %arr2_copy_1, i32* %arr2_copy_2, i32* %arr2_copy_3, i32* %arr2_copy_4, i32* %arr2_copy_5, i32* %arr2_copy_6, i32* %arr2_copy_7, i32* %arr2_copy_8, i32* %arr2_copy_9, i32* %arr3_copy_0, i32* %arr3_copy_1, i32* %arr3_copy_2, i32* %arr3_copy_3, i32* %arr3_copy_4, i32* %arr3_copy_5, i32* %arr3_copy_6, i32* %arr3_copy_7, i32* %arr3_copy_8, i32* %arr3_copy_9)
  call void @copy_back([12 x i32]* %0, i32* %arr_copy_0, i32* %arr_copy_1, i32* %arr_copy_2, i32* %arr_copy_3, i32* %arr_copy_4, i32* %arr_copy_5, i32* %arr_copy_6, i32* %arr_copy_7, i32* %arr_copy_8, i32* %arr_copy_9, i32* %arr_copy_10, i32* %arr_copy_11, [10 x i32]* %1, i32* %arr2_copy_0, i32* %arr2_copy_1, i32* %arr2_copy_2, i32* %arr2_copy_3, i32* %arr2_copy_4, i32* %arr2_copy_5, i32* %arr2_copy_6, i32* %arr2_copy_7, i32* %arr2_copy_8, i32* %arr2_copy_9, [10 x i32]* %2, i32* %arr3_copy_0, i32* %arr3_copy_1, i32* %arr3_copy_2, i32* %arr3_copy_3, i32* %arr3_copy_4, i32* %arr3_copy_5, i32* %arr3_copy_6, i32* %arr3_copy_7, i32* %arr3_copy_8, i32* %arr3_copy_9)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.assume(i1) #1

; Function Attrs: argmemonly noinline norecurse
define internal void @onebyonecpy_hls.p0a12i32.3.4(i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.0" %_0, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.1" %_1, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.2" %_2, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.3" %_3, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.4" %_4, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.5" %_5, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.6" %_6, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.7" %_7, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.8" %_8, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.9" %_9, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.10" %_10, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.11" %_11, [12 x i32]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1") #2 {
entry:
  %1 = icmp eq i32* %_0, null
  %2 = icmp eq [12 x i32]* %0, null
  %3 = or i1 %1, %2
  br i1 %3, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %dst.addr.exit, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %dst.addr.exit ]
  %src.addr = getelementptr [12 x i32], [12 x i32]* %0, i64 0, i64 %for.loop.idx1
  %4 = load i32, i32* %src.addr, align 4
  %5 = trunc i64 %for.loop.idx1 to i4
  switch i4 %5, label %dst.addr.case.11 [
    i4 0, label %dst.addr.case.0
    i4 1, label %dst.addr.case.1
    i4 2, label %dst.addr.case.2
    i4 3, label %dst.addr.case.3
    i4 4, label %dst.addr.case.4
    i4 5, label %dst.addr.case.5
    i4 6, label %dst.addr.case.6
    i4 7, label %dst.addr.case.7
    i4 -8, label %dst.addr.case.8
    i4 -7, label %dst.addr.case.9
    i4 -6, label %dst.addr.case.10
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
  store i32 %4, i32* %_5, align 512
  br label %dst.addr.exit

dst.addr.case.6:                                  ; preds = %for.loop
  store i32 %4, i32* %_6, align 512
  br label %dst.addr.exit

dst.addr.case.7:                                  ; preds = %for.loop
  store i32 %4, i32* %_7, align 512
  br label %dst.addr.exit

dst.addr.case.8:                                  ; preds = %for.loop
  store i32 %4, i32* %_8, align 512
  br label %dst.addr.exit

dst.addr.case.9:                                  ; preds = %for.loop
  store i32 %4, i32* %_9, align 512
  br label %dst.addr.exit

dst.addr.case.10:                                 ; preds = %for.loop
  store i32 %4, i32* %_10, align 512
  br label %dst.addr.exit

dst.addr.case.11:                                 ; preds = %for.loop
  %6 = icmp eq i4 %5, -5
  call void @llvm.assume(i1 %6)
  store i32 %4, i32* %_11, align 512
  br label %dst.addr.exit

dst.addr.exit:                                    ; preds = %dst.addr.case.11, %dst.addr.case.10, %dst.addr.case.9, %dst.addr.case.8, %dst.addr.case.7, %dst.addr.case.6, %dst.addr.case.5, %dst.addr.case.4, %dst.addr.case.3, %dst.addr.case.2, %dst.addr.case.1, %dst.addr.case.0
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 12
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %dst.addr.exit, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @onebyonecpy_hls.p0a10i32.5.6(i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.0" %_0, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.1" %_1, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.2" %_2, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.3" %_3, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.4" %_4, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.5" %_5, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.6" %_6, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.7" %_7, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.8" %_8, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.9" %_9, [10 x i32]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1") #2 {
entry:
  %1 = icmp eq i32* %_0, null
  %2 = icmp eq [10 x i32]* %0, null
  %3 = or i1 %1, %2
  br i1 %3, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %dst.addr.exit, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %dst.addr.exit ]
  %src.addr = getelementptr [10 x i32], [10 x i32]* %0, i64 0, i64 %for.loop.idx1
  %4 = load i32, i32* %src.addr, align 4
  %5 = trunc i64 %for.loop.idx1 to i4
  switch i4 %5, label %dst.addr.case.9 [
    i4 0, label %dst.addr.case.0
    i4 1, label %dst.addr.case.1
    i4 2, label %dst.addr.case.2
    i4 3, label %dst.addr.case.3
    i4 4, label %dst.addr.case.4
    i4 5, label %dst.addr.case.5
    i4 6, label %dst.addr.case.6
    i4 7, label %dst.addr.case.7
    i4 -8, label %dst.addr.case.8
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
  store i32 %4, i32* %_5, align 512
  br label %dst.addr.exit

dst.addr.case.6:                                  ; preds = %for.loop
  store i32 %4, i32* %_6, align 512
  br label %dst.addr.exit

dst.addr.case.7:                                  ; preds = %for.loop
  store i32 %4, i32* %_7, align 512
  br label %dst.addr.exit

dst.addr.case.8:                                  ; preds = %for.loop
  store i32 %4, i32* %_8, align 512
  br label %dst.addr.exit

dst.addr.case.9:                                  ; preds = %for.loop
  %6 = icmp eq i4 %5, -7
  call void @llvm.assume(i1 %6)
  store i32 %4, i32* %_9, align 512
  br label %dst.addr.exit

dst.addr.exit:                                    ; preds = %dst.addr.case.9, %dst.addr.case.8, %dst.addr.case.7, %dst.addr.case.6, %dst.addr.case.5, %dst.addr.case.4, %dst.addr.case.3, %dst.addr.case.2, %dst.addr.case.1, %dst.addr.case.0
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 10
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %dst.addr.exit, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @copy_in([12 x i32]* noalias readonly "orig.arg.no"="0", i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.0" %_0, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.1" %_1, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.2" %_2, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.3" %_3, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.4" %_4, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.5" %_5, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.6" %_6, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.7" %_7, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.8" %_8, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.9" %_9, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.10" %_10, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.11" %_11, [10 x i32]* noalias readonly "orig.arg.no"="2", i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.0" %_01, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.1" %_12, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.2" %_23, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.3" %_34, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.4" %_45, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.5" %_56, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.6" %_67, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.7" %_78, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.8" %_89, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.9" %_910, [10 x i32]* noalias readonly "orig.arg.no"="4", i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.0" %_011, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.1" %_112, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.2" %_213, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.3" %_314, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.4" %_415, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.5" %_516, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.6" %_617, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.7" %_718, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.8" %_819, i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.9" %_920) #3 {
entry:
  call void @onebyonecpy_hls.p0a12i32.3.4(i32* align 512 %_0, i32* align 512 %_1, i32* align 512 %_2, i32* align 512 %_3, i32* align 512 %_4, i32* align 512 %_5, i32* align 512 %_6, i32* align 512 %_7, i32* align 512 %_8, i32* align 512 %_9, i32* align 512 %_10, i32* align 512 %_11, [12 x i32]* %0)
  call void @onebyonecpy_hls.p0a10i32.5.6(i32* align 512 %_01, i32* align 512 %_12, i32* align 512 %_23, i32* align 512 %_34, i32* align 512 %_45, i32* align 512 %_56, i32* align 512 %_67, i32* align 512 %_78, i32* align 512 %_89, i32* align 512 %_910, [10 x i32]* %1)
  call void @onebyonecpy_hls.p0a10i32.5.6(i32* align 512 %_011, i32* align 512 %_112, i32* align 512 %_213, i32* align 512 %_314, i32* align 512 %_415, i32* align 512 %_516, i32* align 512 %_617, i32* align 512 %_718, i32* align 512 %_819, i32* align 512 %_920, [10 x i32]* %2)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @onebyonecpy_hls.p0a12i32.11.12([12 x i32]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0", i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.0" %_0, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.1" %_1, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.2" %_2, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.3" %_3, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.4" %_4, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.5" %_5, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.6" %_6, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.7" %_7, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.8" %_8, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.9" %_9, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.10" %_10, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.11" %_11) #2 {
entry:
  %1 = icmp eq [12 x i32]* %0, null
  %2 = icmp eq i32* %_0, null
  %3 = or i1 %1, %2
  br i1 %3, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %src.addr.exit, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %src.addr.exit ]
  %dst.addr = getelementptr [12 x i32], [12 x i32]* %0, i64 0, i64 %for.loop.idx1
  %4 = trunc i64 %for.loop.idx1 to i4
  switch i4 %4, label %src.addr.case.11 [
    i4 0, label %src.addr.case.0
    i4 1, label %src.addr.case.1
    i4 2, label %src.addr.case.2
    i4 3, label %src.addr.case.3
    i4 4, label %src.addr.case.4
    i4 5, label %src.addr.case.5
    i4 6, label %src.addr.case.6
    i4 7, label %src.addr.case.7
    i4 -8, label %src.addr.case.8
    i4 -7, label %src.addr.case.9
    i4 -6, label %src.addr.case.10
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
  %_56 = load i32, i32* %_5, align 512
  br label %src.addr.exit

src.addr.case.6:                                  ; preds = %for.loop
  %_67 = load i32, i32* %_6, align 512
  br label %src.addr.exit

src.addr.case.7:                                  ; preds = %for.loop
  %_78 = load i32, i32* %_7, align 512
  br label %src.addr.exit

src.addr.case.8:                                  ; preds = %for.loop
  %_89 = load i32, i32* %_8, align 512
  br label %src.addr.exit

src.addr.case.9:                                  ; preds = %for.loop
  %_910 = load i32, i32* %_9, align 512
  br label %src.addr.exit

src.addr.case.10:                                 ; preds = %for.loop
  %_1011 = load i32, i32* %_10, align 512
  br label %src.addr.exit

src.addr.case.11:                                 ; preds = %for.loop
  %5 = icmp eq i4 %4, -5
  call void @llvm.assume(i1 %5)
  %_1112 = load i32, i32* %_11, align 512
  br label %src.addr.exit

src.addr.exit:                                    ; preds = %src.addr.case.11, %src.addr.case.10, %src.addr.case.9, %src.addr.case.8, %src.addr.case.7, %src.addr.case.6, %src.addr.case.5, %src.addr.case.4, %src.addr.case.3, %src.addr.case.2, %src.addr.case.1, %src.addr.case.0
  %6 = phi i32 [ %_01, %src.addr.case.0 ], [ %_12, %src.addr.case.1 ], [ %_23, %src.addr.case.2 ], [ %_34, %src.addr.case.3 ], [ %_45, %src.addr.case.4 ], [ %_56, %src.addr.case.5 ], [ %_67, %src.addr.case.6 ], [ %_78, %src.addr.case.7 ], [ %_89, %src.addr.case.8 ], [ %_910, %src.addr.case.9 ], [ %_1011, %src.addr.case.10 ], [ %_1112, %src.addr.case.11 ]
  store i32 %6, i32* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 12
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %src.addr.exit, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @onebyonecpy_hls.p0a10i32.13.14([10 x i32]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0", i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.0" %_0, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.1" %_1, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.2" %_2, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.3" %_3, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.4" %_4, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.5" %_5, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.6" %_6, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.7" %_7, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.8" %_8, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.9" %_9) #2 {
entry:
  %1 = icmp eq [10 x i32]* %0, null
  %2 = icmp eq i32* %_0, null
  %3 = or i1 %1, %2
  br i1 %3, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %src.addr.exit, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %src.addr.exit ]
  %dst.addr = getelementptr [10 x i32], [10 x i32]* %0, i64 0, i64 %for.loop.idx1
  %4 = trunc i64 %for.loop.idx1 to i4
  switch i4 %4, label %src.addr.case.9 [
    i4 0, label %src.addr.case.0
    i4 1, label %src.addr.case.1
    i4 2, label %src.addr.case.2
    i4 3, label %src.addr.case.3
    i4 4, label %src.addr.case.4
    i4 5, label %src.addr.case.5
    i4 6, label %src.addr.case.6
    i4 7, label %src.addr.case.7
    i4 -8, label %src.addr.case.8
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
  %_56 = load i32, i32* %_5, align 512
  br label %src.addr.exit

src.addr.case.6:                                  ; preds = %for.loop
  %_67 = load i32, i32* %_6, align 512
  br label %src.addr.exit

src.addr.case.7:                                  ; preds = %for.loop
  %_78 = load i32, i32* %_7, align 512
  br label %src.addr.exit

src.addr.case.8:                                  ; preds = %for.loop
  %_89 = load i32, i32* %_8, align 512
  br label %src.addr.exit

src.addr.case.9:                                  ; preds = %for.loop
  %5 = icmp eq i4 %4, -7
  call void @llvm.assume(i1 %5)
  %_910 = load i32, i32* %_9, align 512
  br label %src.addr.exit

src.addr.exit:                                    ; preds = %src.addr.case.9, %src.addr.case.8, %src.addr.case.7, %src.addr.case.6, %src.addr.case.5, %src.addr.case.4, %src.addr.case.3, %src.addr.case.2, %src.addr.case.1, %src.addr.case.0
  %6 = phi i32 [ %_01, %src.addr.case.0 ], [ %_12, %src.addr.case.1 ], [ %_23, %src.addr.case.2 ], [ %_34, %src.addr.case.3 ], [ %_45, %src.addr.case.4 ], [ %_56, %src.addr.case.5 ], [ %_67, %src.addr.case.6 ], [ %_78, %src.addr.case.7 ], [ %_89, %src.addr.case.8 ], [ %_910, %src.addr.case.9 ]
  store i32 %6, i32* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 10
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %src.addr.exit, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @copy_out([12 x i32]* noalias "orig.arg.no"="0", i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.0" %_0, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.1" %_1, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.2" %_2, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.3" %_3, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.4" %_4, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.5" %_5, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.6" %_6, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.7" %_7, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.8" %_8, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.9" %_9, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.10" %_10, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.11" %_11, [10 x i32]* noalias "orig.arg.no"="2", i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.0" %_01, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.1" %_12, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.2" %_23, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.3" %_34, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.4" %_45, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.5" %_56, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.6" %_67, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.7" %_78, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.8" %_89, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.9" %_910, [10 x i32]* noalias "orig.arg.no"="4", i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.0" %_011, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.1" %_112, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.2" %_213, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.3" %_314, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.4" %_415, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.5" %_516, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.6" %_617, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.7" %_718, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.8" %_819, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.9" %_920) #4 {
entry:
  call void @onebyonecpy_hls.p0a12i32.11.12([12 x i32]* %0, i32* align 512 %_0, i32* align 512 %_1, i32* align 512 %_2, i32* align 512 %_3, i32* align 512 %_4, i32* align 512 %_5, i32* align 512 %_6, i32* align 512 %_7, i32* align 512 %_8, i32* align 512 %_9, i32* align 512 %_10, i32* align 512 %_11)
  call void @onebyonecpy_hls.p0a10i32.13.14([10 x i32]* %1, i32* align 512 %_01, i32* align 512 %_12, i32* align 512 %_23, i32* align 512 %_34, i32* align 512 %_45, i32* align 512 %_56, i32* align 512 %_67, i32* align 512 %_78, i32* align 512 %_89, i32* align 512 %_910)
  call void @onebyonecpy_hls.p0a10i32.13.14([10 x i32]* %2, i32* align 512 %_011, i32* align 512 %_112, i32* align 512 %_213, i32* align 512 %_314, i32* align 512 %_415, i32* align 512 %_516, i32* align 512 %_617, i32* align 512 %_718, i32* align 512 %_819, i32* align 512 %_920)
  ret void
}

declare void @apatb_processArray_hw(i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*)

; Function Attrs: argmemonly noinline norecurse
define internal void @copy_back([12 x i32]* noalias "orig.arg.no"="0", i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.0" %_0, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.1" %_1, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.2" %_2, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.3" %_3, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.4" %_4, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.5" %_5, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.6" %_6, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.7" %_7, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.8" %_8, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.9" %_9, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.10" %_10, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.11" %_11, [10 x i32]* noalias "orig.arg.no"="2", i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.0" %_01, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.1" %_12, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.2" %_23, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.3" %_34, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.4" %_45, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.5" %_56, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.6" %_67, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.7" %_78, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.8" %_89, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.9" %_910, [10 x i32]* noalias "orig.arg.no"="4", i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.0" %_011, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.1" %_112, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.2" %_213, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.3" %_314, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.4" %_415, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.5" %_516, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.6" %_617, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.7" %_718, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.8" %_819, i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.9" %_920) #4 {
entry:
  call void @onebyonecpy_hls.p0a12i32.11.12([12 x i32]* %0, i32* align 512 %_0, i32* align 512 %_1, i32* align 512 %_2, i32* align 512 %_3, i32* align 512 %_4, i32* align 512 %_5, i32* align 512 %_6, i32* align 512 %_7, i32* align 512 %_8, i32* align 512 %_9, i32* align 512 %_10, i32* align 512 %_11)
  call void @onebyonecpy_hls.p0a10i32.13.14([10 x i32]* %1, i32* align 512 %_01, i32* align 512 %_12, i32* align 512 %_23, i32* align 512 %_34, i32* align 512 %_45, i32* align 512 %_56, i32* align 512 %_67, i32* align 512 %_78, i32* align 512 %_89, i32* align 512 %_910)
  ret void
}

define void @processArray_hw_stub_wrapper(i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #5 {
entry:
  %32 = alloca [12 x i32]
  %33 = alloca [10 x i32]
  %34 = alloca [10 x i32]
  call void @copy_out([12 x i32]* %32, i32* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5, i32* %6, i32* %7, i32* %8, i32* %9, i32* %10, i32* %11, [10 x i32]* %33, i32* %12, i32* %13, i32* %14, i32* %15, i32* %16, i32* %17, i32* %18, i32* %19, i32* %20, i32* %21, [10 x i32]* %34, i32* %22, i32* %23, i32* %24, i32* %25, i32* %26, i32* %27, i32* %28, i32* %29, i32* %30, i32* %31)
  %35 = bitcast [12 x i32]* %32 to i32*
  %36 = bitcast [10 x i32]* %33 to i32*
  %37 = bitcast [10 x i32]* %34 to i32*
  call void @processArray_hw_stub(i32* %35, i32* %36, i32* %37)
  call void @copy_in([12 x i32]* %32, i32* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5, i32* %6, i32* %7, i32* %8, i32* %9, i32* %10, i32* %11, [10 x i32]* %33, i32* %12, i32* %13, i32* %14, i32* %15, i32* %16, i32* %17, i32* %18, i32* %19, i32* %20, i32* %21, [10 x i32]* %34, i32* %22, i32* %23, i32* %24, i32* %25, i32* %26, i32* %27, i32* %28, i32* %29, i32* %30, i32* %31)
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
!datalayout.transforms.on.top = !{!5, !23, !37}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
!5 = !{!6, !8, !10}
!6 = !{!7}
!7 = !{!"0", [12 x i32]* null}
!8 = !{!9}
!9 = !{!"array_partition", !"type=Complete", !"dim=1"}
!10 = !{!11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22}
!11 = !{!"0.0", i32* null}
!12 = !{!"0.1", i32* null}
!13 = !{!"0.2", i32* null}
!14 = !{!"0.3", i32* null}
!15 = !{!"0.4", i32* null}
!16 = !{!"0.5", i32* null}
!17 = !{!"0.6", i32* null}
!18 = !{!"0.7", i32* null}
!19 = !{!"0.8", i32* null}
!20 = !{!"0.9", i32* null}
!21 = !{!"0.10", i32* null}
!22 = !{!"0.11", i32* null}
!23 = !{!24, !8, !26}
!24 = !{!25}
!25 = !{!"1", [10 x i32]* null}
!26 = !{!27, !28, !29, !30, !31, !32, !33, !34, !35, !36}
!27 = !{!"1.0", i32* null}
!28 = !{!"1.1", i32* null}
!29 = !{!"1.2", i32* null}
!30 = !{!"1.3", i32* null}
!31 = !{!"1.4", i32* null}
!32 = !{!"1.5", i32* null}
!33 = !{!"1.6", i32* null}
!34 = !{!"1.7", i32* null}
!35 = !{!"1.8", i32* null}
!36 = !{!"1.9", i32* null}
!37 = !{!38, !8, !40}
!38 = !{!39}
!39 = !{!"2", [10 x i32]* null}
!40 = !{!41, !42, !43, !44, !45, !46, !47, !48, !49, !50}
!41 = !{!"2.0", i32* null}
!42 = !{!"2.1", i32* null}
!43 = !{!"2.2", i32* null}
!44 = !{!"2.3", i32* null}
!45 = !{!"2.4", i32* null}
!46 = !{!"2.5", i32* null}
!47 = !{!"2.6", i32* null}
!48 = !{!"2.7", i32* null}
!49 = !{!"2.8", i32* null}
!50 = !{!"2.9", i32* null}

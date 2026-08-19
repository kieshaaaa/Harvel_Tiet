; ModuleID = '/home/coss01/vitis_hls_demo_c/matrix_mul/matrix_mul/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

; Function Attrs: argmemonly noinline
define void @apatb_multiplyMatrix_ir([3 x i32]* noalias nocapture nonnull readonly %mat1, [3 x i32]* noalias nocapture nonnull readonly %mat2, [3 x i32]* noalias nocapture nonnull %result) local_unnamed_addr #0 {
entry:
  %mat1_copy = alloca [3 x i32], align 512
  %mat2_copy = alloca [3 x i32], align 512
  %result_copy = alloca [3 x i32], align 512
  call fastcc void @copy_in([3 x i32]* nonnull %mat1, [3 x i32]* nonnull align 512 %mat1_copy, [3 x i32]* nonnull %mat2, [3 x i32]* nonnull align 512 %mat2_copy, [3 x i32]* nonnull %result, [3 x i32]* nonnull align 512 %result_copy)
  call void @apatb_multiplyMatrix_hw([3 x i32]* %mat1_copy, [3 x i32]* %mat2_copy, [3 x i32]* %result_copy)
  call void @copy_back([3 x i32]* %mat1, [3 x i32]* %mat1_copy, [3 x i32]* %mat2, [3 x i32]* %mat2_copy, [3 x i32]* %result, [3 x i32]* %result_copy)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_in([3 x i32]* noalias readonly, [3 x i32]* noalias align 512, [3 x i32]* noalias readonly, [3 x i32]* noalias align 512, [3 x i32]* noalias readonly, [3 x i32]* noalias align 512) unnamed_addr #1 {
entry:
  call fastcc void @onebyonecpy_hls.p0a3i32([3 x i32]* align 512 %1, [3 x i32]* %0)
  call fastcc void @onebyonecpy_hls.p0a3i32([3 x i32]* align 512 %3, [3 x i32]* %2)
  call fastcc void @onebyonecpy_hls.p0a3i32([3 x i32]* align 512 %5, [3 x i32]* %4)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a3i32([3 x i32]* noalias align 512, [3 x i32]* noalias readonly) unnamed_addr #2 {
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

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_out([3 x i32]* noalias, [3 x i32]* noalias readonly align 512, [3 x i32]* noalias, [3 x i32]* noalias readonly align 512, [3 x i32]* noalias, [3 x i32]* noalias readonly align 512) unnamed_addr #3 {
entry:
  call fastcc void @onebyonecpy_hls.p0a3i32([3 x i32]* %0, [3 x i32]* align 512 %1)
  call fastcc void @onebyonecpy_hls.p0a3i32([3 x i32]* %2, [3 x i32]* align 512 %3)
  call fastcc void @onebyonecpy_hls.p0a3i32([3 x i32]* %4, [3 x i32]* align 512 %5)
  ret void
}

declare void @apatb_multiplyMatrix_hw([3 x i32]*, [3 x i32]*, [3 x i32]*)

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_back([3 x i32]* noalias, [3 x i32]* noalias readonly align 512, [3 x i32]* noalias, [3 x i32]* noalias readonly align 512, [3 x i32]* noalias, [3 x i32]* noalias readonly align 512) unnamed_addr #3 {
entry:
  call fastcc void @onebyonecpy_hls.p0a3i32([3 x i32]* %4, [3 x i32]* align 512 %5)
  ret void
}

define void @multiplyMatrix_hw_stub_wrapper([3 x i32]*, [3 x i32]*, [3 x i32]*) #4 {
entry:
  call void @copy_out([3 x i32]* null, [3 x i32]* %0, [3 x i32]* null, [3 x i32]* %1, [3 x i32]* null, [3 x i32]* %2)
  call void @multiplyMatrix_hw_stub([3 x i32]* %0, [3 x i32]* %1, [3 x i32]* %2)
  call void @copy_in([3 x i32]* null, [3 x i32]* %0, [3 x i32]* null, [3 x i32]* %1, [3 x i32]* null, [3 x i32]* %2)
  ret void
}

declare void @multiplyMatrix_hw_stub([3 x i32]*, [3 x i32]*, [3 x i32]*)

attributes #0 = { argmemonly noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline norecurse "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyout" }
attributes #4 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}

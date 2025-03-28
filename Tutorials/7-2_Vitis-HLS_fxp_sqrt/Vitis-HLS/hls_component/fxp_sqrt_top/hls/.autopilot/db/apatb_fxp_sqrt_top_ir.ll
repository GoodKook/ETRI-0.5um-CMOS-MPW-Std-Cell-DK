; ModuleID = '/home/goodkook/ETRI050_DesignKit/devel/Tutorials/7-2_Vitis-HLS_fxp_sqrt/Vitis-HLS/hls_component/fxp_sqrt_top/hls/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"struct.ap_ufixed<24, 8, AP_TRN, AP_WRAP, 0>" = type { %"struct.ap_fixed_base<24, 8, false, AP_TRN, AP_WRAP, 0>" }
%"struct.ap_fixed_base<24, 8, false, AP_TRN, AP_WRAP, 0>" = type { %"struct.ssdm_int<24, false>" }
%"struct.ssdm_int<24, false>" = type { i24 }
%"struct.ap_ufixed<28, 4, AP_TRN, AP_WRAP, 0>" = type { %"struct.ap_fixed_base<28, 4, false, AP_TRN, AP_WRAP, 0>" }
%"struct.ap_fixed_base<28, 4, false, AP_TRN, AP_WRAP, 0>" = type { %"struct.ssdm_int<28, false>" }
%"struct.ssdm_int<28, false>" = type { i28 }

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_in(%"struct.ap_ufixed<24, 8, AP_TRN, AP_WRAP, 0>"* noalias readonly "unpacked"="0", i24* noalias nocapture align 512 "unpacked"="1.0") unnamed_addr #0 {
entry:
  call fastcc void @"onebyonecpy_hls.p0struct.ap_ufixed<24, 8, AP_TRN, AP_WRAP, 0>"(i24* align 512 %1, %"struct.ap_ufixed<24, 8, AP_TRN, AP_WRAP, 0>"* %0)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_ufixed<24, 8, AP_TRN, AP_WRAP, 0>"(i24* noalias nocapture align 512 "unpacked"="0.0" %dst, %"struct.ap_ufixed<24, 8, AP_TRN, AP_WRAP, 0>"* noalias readonly "unpacked"="1" %src) unnamed_addr #1 {
entry:
  %0 = icmp eq %"struct.ap_ufixed<24, 8, AP_TRN, AP_WRAP, 0>"* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %src.0.0.03 = getelementptr %"struct.ap_ufixed<24, 8, AP_TRN, AP_WRAP, 0>", %"struct.ap_ufixed<24, 8, AP_TRN, AP_WRAP, 0>"* %src, i64 0, i32 0, i32 0, i32 0
  %1 = load i24, i24* %src.0.0.03, align 4
  store i24 %1, i24* %dst, align 512
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_out(%"struct.ap_ufixed<24, 8, AP_TRN, AP_WRAP, 0>"* noalias "unpacked"="0", i24* noalias nocapture readonly align 512 "unpacked"="1.0") unnamed_addr #2 {
entry:
  call fastcc void @"onebyonecpy_hls.p0struct.ap_ufixed<24, 8, AP_TRN, AP_WRAP, 0>.5"(%"struct.ap_ufixed<24, 8, AP_TRN, AP_WRAP, 0>"* %0, i24* align 512 %1)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_ufixed<24, 8, AP_TRN, AP_WRAP, 0>.5"(%"struct.ap_ufixed<24, 8, AP_TRN, AP_WRAP, 0>"* noalias "unpacked"="0" %dst, i24* noalias nocapture readonly align 512 "unpacked"="1.0" %src) unnamed_addr #1 {
entry:
  %0 = icmp eq %"struct.ap_ufixed<24, 8, AP_TRN, AP_WRAP, 0>"* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %dst.0.0.04 = getelementptr %"struct.ap_ufixed<24, 8, AP_TRN, AP_WRAP, 0>", %"struct.ap_ufixed<24, 8, AP_TRN, AP_WRAP, 0>"* %dst, i64 0, i32 0, i32 0, i32 0
  %1 = load i24, i24* %src, align 512
  store i24 %1, i24* %dst.0.0.04, align 4
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

declare i8* @malloc(i64)

declare void @free(i8*)

declare void @apatb_fxp_sqrt_top_hw(%"struct.ap_ufixed<28, 4, AP_TRN, AP_WRAP, 0>"*, i24*)

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_back(%"struct.ap_ufixed<24, 8, AP_TRN, AP_WRAP, 0>"* noalias "unpacked"="0", i24* noalias nocapture readonly align 512 "unpacked"="1.0") unnamed_addr #2 {
entry:
  call fastcc void @"onebyonecpy_hls.p0struct.ap_ufixed<24, 8, AP_TRN, AP_WRAP, 0>.5"(%"struct.ap_ufixed<24, 8, AP_TRN, AP_WRAP, 0>"* %0, i24* align 512 %1)
  ret void
}

declare void @fxp_sqrt_top_hw_stub(%"struct.ap_ufixed<28, 4, AP_TRN, AP_WRAP, 0>"*, %"struct.ap_ufixed<24, 8, AP_TRN, AP_WRAP, 0>"* noalias nonnull)

define void @fxp_sqrt_top_hw_stub_wrapper(%"struct.ap_ufixed<28, 4, AP_TRN, AP_WRAP, 0>"*, i24*) #3 {
entry:
  %2 = call i8* @malloc(i64 4)
  %3 = bitcast i8* %2 to %"struct.ap_ufixed<24, 8, AP_TRN, AP_WRAP, 0>"*
  call void @copy_out(%"struct.ap_ufixed<24, 8, AP_TRN, AP_WRAP, 0>"* %3, i24* %1)
  call void @fxp_sqrt_top_hw_stub(%"struct.ap_ufixed<28, 4, AP_TRN, AP_WRAP, 0>"* %0, %"struct.ap_ufixed<24, 8, AP_TRN, AP_WRAP, 0>"* %3)
  call void @copy_in(%"struct.ap_ufixed<24, 8, AP_TRN, AP_WRAP, 0>"* %3, i24* %1)
  call void @free(i8* %2)
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define void @apatb_fxp_sqrt_top_ir(%"struct.ap_ufixed<28, 4, AP_TRN, AP_WRAP, 0>"* %ret, %"struct.ap_ufixed<24, 8, AP_TRN, AP_WRAP, 0>"* noalias nonnull dereferenceable(4) %in_val) #4 {
entry:
  %in_val_copy = alloca i24, align 512
  call fastcc void @copy_in(%"struct.ap_ufixed<24, 8, AP_TRN, AP_WRAP, 0>"* nonnull %in_val, i24* nonnull align 512 %in_val_copy)
  %0 = alloca %"struct.ap_ufixed<28, 4, AP_TRN, AP_WRAP, 0>"
  call void @apatb_fxp_sqrt_top_hw(%"struct.ap_ufixed<28, 4, AP_TRN, AP_WRAP, 0>"* %0, i24* %in_val_copy)
  call void @copy_back(%"struct.ap_ufixed<24, 8, AP_TRN, AP_WRAP, 0>"* %in_val, i24* %in_val_copy)
  %1 = load volatile %"struct.ap_ufixed<28, 4, AP_TRN, AP_WRAP, 0>", %"struct.ap_ufixed<28, 4, AP_TRN, AP_WRAP, 0>"* %0
  store %"struct.ap_ufixed<28, 4, AP_TRN, AP_WRAP, 0>" %1, %"struct.ap_ufixed<28, 4, AP_TRN, AP_WRAP, 0>"* %ret
  ret void
}

attributes #0 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyin" }
attributes #1 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #2 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyout" }
attributes #3 = { "fpga.wrapper.func"="stub" }
attributes #4 = { argmemonly noinline willreturn "fpga.wrapper.func"="wrapper" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}

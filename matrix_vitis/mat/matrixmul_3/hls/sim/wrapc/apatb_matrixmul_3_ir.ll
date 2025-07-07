; ModuleID = 'C:/Users/Samarth/Desktop/IIIT_Intern/matrix_vitis/mat/matrixmul_3/hls/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"class.hls::stream<axis_data, 0>" = type { %struct.axis_data }
%struct.axis_data = type { i32, %"struct.ap_uint<1>" }
%"struct.ap_uint<1>" = type { %"struct.ap_int_base<1, false>" }
%"struct.ap_int_base<1, false>" = type { %"struct.ssdm_int<1, false>" }
%"struct.ssdm_int<1, false>" = type { i1 }

; Function Attrs: inaccessiblememonly nounwind willreturn
declare void @llvm.sideeffect() #0

; Function Attrs: inaccessiblemem_or_argmemonly noinline willreturn
define void @apatb_matrixmul_3_ir(%"class.hls::stream<axis_data, 0>"* noalias nocapture nonnull dereferenceable(8) %in_A, %"class.hls::stream<axis_data, 0>"* noalias nocapture nonnull dereferenceable(8) %out_C) local_unnamed_addr #1 {
entry:
  %in_A_copy = alloca %"class.hls::stream<axis_data, 0>", align 512
  call void @llvm.sideeffect() #7 [ "stream_interface"(%"class.hls::stream<axis_data, 0>"* %in_A_copy, i32 0) ]
  %out_C_copy = alloca %"class.hls::stream<axis_data, 0>", align 512
  call void @llvm.sideeffect() #7 [ "stream_interface"(%"class.hls::stream<axis_data, 0>"* %out_C_copy, i32 0) ]
  call fastcc void @copy_in(%"class.hls::stream<axis_data, 0>"* nonnull %in_A, %"class.hls::stream<axis_data, 0>"* nonnull align 512 %in_A_copy, %"class.hls::stream<axis_data, 0>"* nonnull %out_C, %"class.hls::stream<axis_data, 0>"* nonnull align 512 %out_C_copy)
  call void @apatb_matrixmul_3_hw(%"class.hls::stream<axis_data, 0>"* %in_A_copy, %"class.hls::stream<axis_data, 0>"* %out_C_copy)
  call void @copy_back(%"class.hls::stream<axis_data, 0>"* %in_A, %"class.hls::stream<axis_data, 0>"* %in_A_copy, %"class.hls::stream<axis_data, 0>"* %out_C, %"class.hls::stream<axis_data, 0>"* %out_C_copy)
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @copy_in(%"class.hls::stream<axis_data, 0>"* noalias, %"class.hls::stream<axis_data, 0>"* noalias align 512, %"class.hls::stream<axis_data, 0>"* noalias, %"class.hls::stream<axis_data, 0>"* noalias align 512) unnamed_addr #2 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<axis_data, 0>"(%"class.hls::stream<axis_data, 0>"* align 512 %1, %"class.hls::stream<axis_data, 0>"* %0)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<axis_data, 0>"(%"class.hls::stream<axis_data, 0>"* align 512 %3, %"class.hls::stream<axis_data, 0>"* %2)
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<axis_data, 0>"(%"class.hls::stream<axis_data, 0>"* noalias align 512 %dst, %"class.hls::stream<axis_data, 0>"* noalias %src) unnamed_addr #3 {
entry:
  %0 = icmp eq %"class.hls::stream<axis_data, 0>"* %dst, null
  %1 = icmp eq %"class.hls::stream<axis_data, 0>"* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<axis_data, 0>"(%"class.hls::stream<axis_data, 0>"* nonnull align 512 %dst, %"class.hls::stream<axis_data, 0>"* nonnull %src)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<axis_data, 0>"(%"class.hls::stream<axis_data, 0>"* noalias nocapture align 512, %"class.hls::stream<axis_data, 0>"* noalias nocapture) unnamed_addr #4 {
entry:
  %2 = alloca %"class.hls::stream<axis_data, 0>"
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %"class.hls::stream<axis_data, 0>"* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_8(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %"class.hls::stream<axis_data, 0>"* %2 to i8*
  %6 = bitcast %"class.hls::stream<axis_data, 0>"* %1 to i8*
  call void @fpga_fifo_pop_8(i8* %5, i8* %6)
  %7 = load volatile %"class.hls::stream<axis_data, 0>", %"class.hls::stream<axis_data, 0>"* %2
  %8 = bitcast %"class.hls::stream<axis_data, 0>"* %2 to i8*
  %9 = bitcast %"class.hls::stream<axis_data, 0>"* %0 to i8*
  call void @fpga_fifo_push_8(i8* %8, i8* %9)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @copy_out(%"class.hls::stream<axis_data, 0>"* noalias, %"class.hls::stream<axis_data, 0>"* noalias align 512, %"class.hls::stream<axis_data, 0>"* noalias, %"class.hls::stream<axis_data, 0>"* noalias align 512) unnamed_addr #5 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<axis_data, 0>"(%"class.hls::stream<axis_data, 0>"* %0, %"class.hls::stream<axis_data, 0>"* align 512 %1)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<axis_data, 0>"(%"class.hls::stream<axis_data, 0>"* %2, %"class.hls::stream<axis_data, 0>"* align 512 %3)
  ret void
}

declare void @apatb_matrixmul_3_hw(%"class.hls::stream<axis_data, 0>"*, %"class.hls::stream<axis_data, 0>"*)

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @copy_back(%"class.hls::stream<axis_data, 0>"* noalias, %"class.hls::stream<axis_data, 0>"* noalias align 512, %"class.hls::stream<axis_data, 0>"* noalias, %"class.hls::stream<axis_data, 0>"* noalias align 512) unnamed_addr #5 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<axis_data, 0>"(%"class.hls::stream<axis_data, 0>"* %0, %"class.hls::stream<axis_data, 0>"* align 512 %1)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<axis_data, 0>"(%"class.hls::stream<axis_data, 0>"* %2, %"class.hls::stream<axis_data, 0>"* align 512 %3)
  ret void
}

declare void @matrixmul_3_hw_stub(%"class.hls::stream<axis_data, 0>"* noalias nocapture nonnull, %"class.hls::stream<axis_data, 0>"* noalias nocapture nonnull)

define void @matrixmul_3_hw_stub_wrapper(%"class.hls::stream<axis_data, 0>"*, %"class.hls::stream<axis_data, 0>"*) #6 {
entry:
  call void @copy_out(%"class.hls::stream<axis_data, 0>"* null, %"class.hls::stream<axis_data, 0>"* %0, %"class.hls::stream<axis_data, 0>"* null, %"class.hls::stream<axis_data, 0>"* %1)
  call void @matrixmul_3_hw_stub(%"class.hls::stream<axis_data, 0>"* %0, %"class.hls::stream<axis_data, 0>"* %1)
  call void @copy_in(%"class.hls::stream<axis_data, 0>"* null, %"class.hls::stream<axis_data, 0>"* %0, %"class.hls::stream<axis_data, 0>"* null, %"class.hls::stream<axis_data, 0>"* %1)
  ret void
}

declare i1 @fpga_fifo_not_empty_8(i8*)

declare void @fpga_fifo_pop_8(i8*, i8*)

declare void @fpga_fifo_push_8(i8*, i8*)

attributes #0 = { inaccessiblememonly nounwind willreturn }
attributes #1 = { inaccessiblemem_or_argmemonly noinline willreturn "fpga.wrapper.func"="wrapper" }
attributes #2 = { argmemonly noinline willreturn "fpga.wrapper.func"="copyin" }
attributes #3 = { argmemonly noinline willreturn "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #4 = { argmemonly noinline willreturn "fpga.wrapper.func"="streamcpy_hls" }
attributes #5 = { argmemonly noinline willreturn "fpga.wrapper.func"="copyout" }
attributes #6 = { "fpga.wrapper.func"="stub" }
attributes #7 = { inaccessiblememonly nounwind willreturn "xlx.port.bitwidth"="64" "xlx.source"="user" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.rotate.disable"}

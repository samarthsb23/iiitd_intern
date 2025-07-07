
set PATH=
call C:/Xilinx_HLS/Vivado/2019.2/bin/xelab xil_defaultlib.apatb_lab_1_top glbl -prj lab_1.prj -L smartconnect_v1_0 -L axi_protocol_checker_v1_1_12 -L axi_protocol_checker_v1_1_13 -L axis_protocol_checker_v1_1_11 -L axis_protocol_checker_v1_1_12 -L xil_defaultlib -L unisims_ver -L xpm --initfile "C:/Xilinx_HLS/Vivado/2019.2/data/xsim/ip/xsim_ip.ini" --lib "ieee_proposed=./ieee_proposed" -s lab_1 
call C:/Xilinx_HLS/Vivado/2019.2/bin/xsim --noieeewarnings lab_1 -tclbatch lab_1.tcl


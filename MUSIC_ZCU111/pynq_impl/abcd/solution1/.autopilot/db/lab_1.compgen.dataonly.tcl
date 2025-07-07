# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_AXILiteS {
A_V { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 16
	offset_end 23
}
B_V { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 24
	offset_end 31
}
C_V { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 32
	offset_end 39
}
Y_V { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 40
	offset_end 47
}
}
dict set axilite_register_dict AXILiteS $port_AXILiteS



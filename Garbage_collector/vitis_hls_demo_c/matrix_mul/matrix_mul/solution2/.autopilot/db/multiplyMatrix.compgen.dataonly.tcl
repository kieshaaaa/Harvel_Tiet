# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_control {
mat1_0 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 16
	offset_end 27
}
mat1_1 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 28
	offset_end 39
}
mat1_2 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 40
	offset_end 51
}
mat2 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 52
	offset_end 63
}
result_0 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 64
	offset_end 75
}
result_1 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 76
	offset_end 87
}
result_2 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 88
	offset_end 99
}
ap_start { }
ap_done { }
ap_ready { }
ap_continue { }
ap_idle { }
interrupt {
}
}
dict set axilite_register_dict control $port_control



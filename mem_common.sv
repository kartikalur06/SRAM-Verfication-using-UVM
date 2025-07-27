`define NEW_COMP \
function new(string name,uvm_component parent); \
	super.new(name,parent); \
endfunction

`define NEW_OBJ \
function new(string name=""); \
	super.new(name); \
endfunction


parameter ADDR_WIDTH = 16;
parameter WIDTH = 8;

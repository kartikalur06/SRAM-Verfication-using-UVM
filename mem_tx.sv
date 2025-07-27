//parameter ADDR_WIDHT = 16;
//parameter WIDHT = 8;
class mem_tx extends uvm_sequence_item;
	//Instantiate the properties
	rand bit 				wr_rd;
	rand bit[ADDR_WIDTH-1:0]addr;
	rand bit[WIDTH-1:0]		wdata;
		 bit[WIDTH-1:0]		rdata;
	//Factory Registration
//what are in the architecture there are componeents if not there in architecture there are the objects
	`uvm_object_utils_begin(mem_tx)
		`uvm_field_int(wr_rd,UVM_ALL_ON)
		`uvm_field_int(addr,UVM_ALL_ON)
		`uvm_field_int(wdata,UVM_ALL_ON)
		`uvm_field_int(rdata,UVM_ALL_ON)
	`uvm_object_utils_end

	function new(string name="");
		super.new(name);
	endfunction	
	//Constraints
endclass

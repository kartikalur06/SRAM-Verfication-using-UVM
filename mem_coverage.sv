class mem_coverage extends uvm_subscriber #(mem_tx);
	`uvm_component_utils(mem_coverage)
	//`NEW_COMP

	covergroup cg;

	endgroup

	function new(string name,uvm_component parent);
		super.new(name,parent);
		cg=new();
	endfunction
	task run_phase(uvm_phase phase);
	`uvm_info("MEM_COVERAGE_RUN_PHASE","Inside run phase of memory Coverage",UVM_HIGH)
	
	endtask

	virtual function void write(mem_tx t);
	endfunction

endclass 

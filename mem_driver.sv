class mem_driver extends uvm_driver	#(mem_tx);
	`uvm_component_utils(mem_driver)
	`NEW_COMP
	task run_phase(uvm_phase phase);
	`uvm_info("MEM_DRIVER_RUN_PHASE","Inside run phase of memory driver",UVM_HIGH)
	//	forever begin
	//	end
	endtask
endclass

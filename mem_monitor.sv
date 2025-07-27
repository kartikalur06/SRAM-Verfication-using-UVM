class mem_monitor extends uvm_monitor;
	uvm_analysis_port #(mem_tx)analysis_port;
	`uvm_component_utils(mem_monitor)
	//`NEW_COMP

	function new(string name,uvm_component parent);
		super.new(name,parent);
		analysis_port = new("analysis_port",this);
	endfunction


	task run_phase(uvm_phase phase);
	`uvm_info("MEM_MONITOR_RUN_PHASE","Inside run phase of memory Monitor",UVM_HIGH)
	//	forever begin

	//	end
	endtask
endclass

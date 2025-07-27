class base_test extends uvm_test;
	mem_env env;

	`uvm_component_utils(base_test)
	`NEW_COMP

	function void build_phase(uvm_phase phase);
		`uvm_info("MEM_BUILD_PHASE_TEST","	Inside build phase of memory base_test",UVM_HIGH)
		super.build_phase(phase);
		env = mem_env::type_id::create("env",this);
	endfunction


	function void end_of_elaboration_phase(uvm_phase phase);	
	`uvm_info("MEM_ELABORATION_PHASE","	Inside elaboration phase of memory base_test",UVM_HIGH)
		uvm_top.print_topology();
	endfunction
endclass

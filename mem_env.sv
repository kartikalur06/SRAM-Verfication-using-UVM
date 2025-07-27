class mem_env extends uvm_env;
	mem_agent agent;
	mem_sbd sbd;
	`uvm_component_utils(mem_env)
	`NEW_COMP
	function void build_phase(uvm_phase phase);
		`uvm_info("MEM_ENV_BUILD_PHASE","Inside build phase of memory base_test",UVM_HIGH)
		super.build_phase(phase);	
		agent = mem_agent::type_id::create("agent",this);
		sbd = mem_sbd::type_id::create("sbd",this);
	endfunction
	
	function void connect_phase(uvm_phase phase);	
		`uvm_info("MEM_ENV_CONNECT_PHASE","	Inside connect phase of memory base_test",UVM_HIGH)
		//analysis_port.connect(analysis_imp);
		agent.monitor.analysis_port.connect(sbd.analysis_imp);
	endfunction 
endclass

class mem_agent extends uvm_agent;
	mem_sequencer sequencer;
	mem_driver driver;
	mem_monitor monitor;
	mem_coverage coverage;

	`uvm_component_utils(mem_agent)
	`NEW_COMP

	function void build_phase(uvm_phase phase);
		`uvm_info("MEM_AGENT_BUILD_PHASE","	Inside build phase of memory agent",UVM_HIGH)
		super.build_phase(phase);	
		sequencer	 = mem_sequencer::type_id::create("sequencer",this);
		driver		 = mem_driver::type_id::create("driver",this);
		monitor		 = mem_monitor::type_id::create("monitor",this);
		coverage	 = mem_coverage::type_id::create("coverage",this);
	endfunction

	function void connect_phase(uvm_phase phase);
		`uvm_info("MEM_AGENT_CONNECT_PHASE","Inside connect phase of memory agent",UVM_HIGH)
		//seq_item_port.connect(seq_item_export);
		driver.seq_item_port.connect(sequencer.seq_item_export);
		//analysis_port.connect(analysis_export);
		monitor.analysis_port.connect(coverage.analysis_export);
	endfunction
endclass

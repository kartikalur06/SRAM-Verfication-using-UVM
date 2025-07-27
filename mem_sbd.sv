class mem_sbd extends uvm_scoreboard;
	
	uvm_analysis_imp #(mem_tx,mem_sbd) analysis_imp;
	
	`uvm_component_utils(mem_sbd)
//	`NEW_COMP

	function new(string name,uvm_component parent);
		super.new(name,parent);
		analysis_imp = new("analysis_imp",this);
	endfunction


	task run_phase(uvm_phase phase);

	endtask

	function void write(mem_tx t);
	endfunction
endclass

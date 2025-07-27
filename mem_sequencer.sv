// typedef uvm_sequencer #(mem_tx) mem_sequencer;

//				or
class mem_sequencer extends uvm_sequencer #(mem_tx);
	`uvm_component_utils(mem_sequencer)
	`NEW_COMP
endclass

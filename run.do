vlog list.svh +incdir+C:/UVM/uvm-1.1d/src/
vsim -novopt -suppress 12110 top -sv_lib C:/questasim64_10.6c/uvm-1.1d/win64/uvm_dpi \
+UVM_TESTNAME=base_test \
+UVM_VERBOSITY=UVM_HIGH
#add wave -position insertpoint sim:/top/dut/pif
run -all

module top;
	reg clk,rst;

	always #5 clk=~clk;

	initial begin
		clk=0;
		rst=1;
		reset();
		repeat(2)@(posedge clk);
		rst=0;
	end

	task reset();

	endtask

	initial begin
		run_test("");
	end
endmodule

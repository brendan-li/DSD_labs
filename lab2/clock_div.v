module clock_div (clk_in, clk_out);
	input clk_in;
	output clk_out;
	reg[24:0] counter;
	
	initial begin
		counter = 0;
		clk_out = 0;
	end
	
	always @(posedge clk_in) begin
		if (counter == 0)
			counter <= 24999999;
			clk_out <= ~clk_out;
		else
			counter <= counter - 1;
	end
endmodule
module counter (clk, reset, enable, output);
	input clk, enable, reset;
	output [5:0] output;

	reg [5:0] count_reg;

	always @(posedge clk)
        if (enable = 1'b1)
    		if (reset)
    			count_reg <= 2'b00;
    		else if (count_reg = 6'b111100) // reset to 1 when count gets to 60
    			count_reg <= 2'b01;
    		else
    			count_reg <= count_reg + 1'b1;
	end

	assign output = count_reg;
endmodule
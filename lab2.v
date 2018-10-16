module clock_div (clk_in, clk_out);
	input clk_in;
	output clk_out;
	reg[24:0] counter;
	
	initial begin
		counter = 0;
		clk_out = 0;
	end
	
	always @(posedge clk_in) begin
		if (counter == 0) begin
			counter <= 24999999;
			clk_out <= ~clk_out;
		end
		else begin
			counter <= counter - 1;
		end
	end
endmodule

module LED7(clk,rst,LEDPin,Number);
	input clk, rst;
	input [3:0] Number;
	output [6:0] LEDPin;
	reg [6:0] LEDPin;

	always @ (posedge clk or negedge rst)
	begin 
	if (rst==0)
	 begin 
	  LEDPin=7'b00000000;
	 end
	 else
	 begin
	  case (Number)
	  4'b0000: LEDPin=7'b1000000;
	  4'b0001: LEDPin=7'b1111001;
	  4'b0010: LEDPin=7'b0100100;
	  4'b0011: LEDPin=7'b0110000;
	  4'b0100: LEDPin=7'b0011001;
	  4'b0101: LEDPin=7'b0010010;
	  4'b0110: LEDPin=7'b0000010;
	  4'b0111: LEDPin=7'b1111000;
	  4'b1000: LEDPin=7'b0000000;
	  4'b1001: LEDPin=7'b0010000;
	  endcase 
	 end
	end
endmodule 

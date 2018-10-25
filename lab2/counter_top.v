module counter_top(
	input clk,
	input [1:0] switch,
	output[7:0] reg LED1, LED2
	);

	// intermediate signals
	reg [5:0] count_output;
	wire divided_clock;
	
	clock_div clock_divider(clk, divided_clock);
	counter count (divided_clock, switch[0], switch[1], count_output);


endmodule // counter_top
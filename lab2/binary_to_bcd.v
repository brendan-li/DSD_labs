// 8 bit binary to bcd
module binary_to_BCD(
	input [5:0] binary,
	output reg [3:0] tens,
	output reg [3:0] ones
	);
	
	integer i;

	always @(binary)
	begin
		tens = 4'd0;
		ones = 4'd0;

		for(i=5; i>=0; i=i-1) // cycle for binary digit
		begin
			// add 3 if number is >=5
			if (tens >= 5)
				tens = tens +3;
			if (ones >= 5)
				ones = ones +3;

			// shift left 1
			tens = tens << 1;
			tens[0] = ones[3];
			ones = ones << 1;
			ones[0] = binary[i];
		end
	end
endmodule
module Program_counter (
	input logic clk,
	input logic [31:0] in,
	output logic [31:0] out
);

	always @ (posedge clk)
		begin
			out <= in;
		end
		
endmodule 
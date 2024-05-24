module Program_counter (
	input logic clk, rst,
	input logic [31:0] in,
	output logic [31:0] out
);

	always @ (posedge clk or posedge rst) begin
		if (rst) begin
			out <= 0;
		end else begin
			out <= in;
		end
	end
endmodule 
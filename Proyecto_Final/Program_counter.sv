module Program_counter (
	input logic clk, rst, enable,
	input logic [31:0] in,
	output logic [31:0] out
);

	always_ff @ (posedge clk or posedge rst) begin
        if (rst) begin
            out <= 0;
        end else if (enable) begin
            out <= in;
        end
    end
endmodule 
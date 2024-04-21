module playTimer (
    input logic clk, startT,
    output logic [3:0] count
);

	logic [3:0] counter_reg;

	always_ff @(posedge clk) begin
		if (startT) begin
			counter_reg <= counter_reg - 4'd1;
		end else begin
			counter_reg <= 4'b1111;
		end
	end

	assign count = counter_reg; 

endmodule
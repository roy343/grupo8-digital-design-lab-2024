module playTimer (
    input logic clk, startT,
    output logic [3:0] count
);

logic [3:0] counter_reg = 4'b1111;

always_ff @(posedge clk or posedge startT) begin
    if (startT) begin
        counter_reg <= counter_reg - 1;
	 end
end

assign count = counter_reg; 

endmodule
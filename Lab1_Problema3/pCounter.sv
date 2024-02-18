module pCounter #(parameter N = 6) (input logic clk, r, output logic [N-1:0] out);

	reg [N-1:0] count;

	always_ff @(posedge clk or posedge r) begin
        if (r) begin
            count <= 0;
        end else begin
            if (count == {N{1'b1}}) begin
                count <= 0;
            end else begin
                count <= count + 1;
            end
        end
    end

	assign out = count;

endmodule
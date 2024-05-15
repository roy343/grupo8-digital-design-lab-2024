module Adder (
    input logic [31:0] a, b,
    output logic [31:0] s
);

    always @* begin
        s = a + b;
    end


endmodule
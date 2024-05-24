module MUX ( 
    input logic select,
    input logic [31:0] in1, in2,
    output logic [31:0] out
);

    always @* begin
        out = (select) ? in2 : in1;
    end

endmodule
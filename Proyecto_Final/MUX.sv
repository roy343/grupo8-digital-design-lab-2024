module MUXd #( parameter N = 32 )( 
    input logic select,
    input logic [N-1:0] in1, in2,
    output logic [N-1:0] out
);

    always @* begin
        out = (select) ? in2 : in1;
    end

endmodule
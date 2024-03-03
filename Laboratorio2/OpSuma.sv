module OpSuma #(parameter N = 4) (
    input logic [N-1:0] A, B, 
    input logic Cin,         
    output logic [N-1:0] Sum, 
    output logic Cout         
);

    logic [N:0] TempS;
	 logic [N-1:0] TempC;
	 
    genvar i;
    generate
        for (i = 0; i < N; i++) begin : gen_for
            SumadorCompleto SumCom (
                .A(A[i]),
                .B(B[i]),
                .Cin(i == 0 ? Cin : TempC[i-1]),
                .Sum(TempS[i]),
                .Cout(TempC[i])
            );
        end
    endgenerate

    assign Sum = TempS[N-1:0];
    assign Cout = TempC[N-1];

endmodule
module OpMult #(parameter N = 4)(
    input logic [N-1:0] A,
    input logic [N-1:0] B,
    output logic [2*N-1:0] C,
	 output logic v
);

    logic [(2 * N - 1):0] TempC;

    always_comb begin
        TempC = 0;
        for (int i = 0; i < N; i++) begin
            if (B[i] == 1) begin
                TempC = TempC + (A << i);
            end
        end
        C = TempC;
    end
	 
	 assign v = (|C[(2*N-1):N]) ? 1 : 0;

endmodule
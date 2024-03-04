module OpDiv #(parameter N = 4)(
    input logic [N-1:0] A,
    input logic [N-1:0] B,
    output logic [N-1:0] Q,
    output logic [N-1:0] R,
	 output logic v
);

    logic [N-1:0] tempQ;
    logic [N-1:0] tempR;

    always_comb begin
        tempQ = 0;
        tempR = 0;
        for (int i = N - 1; i >= 0; i--) begin
            tempR = (tempR << 1) | A[i];
            tempQ = tempQ << 1;
            if (tempR >= B) begin
                tempR = tempR - B;
                tempQ = tempQ | 1;
            end
        end
        R = tempR;
        Q = tempQ;
    end
	 
	 assign v = (B == 0) ? 1 : 0;
	 

endmodule
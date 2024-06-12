module ALUx (
    input logic [31:0] A,
    input logic [31:0] B,
    input logic [1:0] opcode,
    output logic [31:0] result,
    output logic [3:0] ALUFlags
);

    logic [32:0] temp_result; 

    logic N, Z, C, V;

    always_comb begin
        temp_result = 0; // Ensure temp_result is initialized
        result = 0;
        N = 0;
        Z = 0;
        C = 0;
        V = 0;

        case (opcode)
            2'b00: begin // AND
                result = A & B;
            end
            2'b01: begin // OR
                result = A | B;
            end
            2'b10: begin // ADD
                temp_result = A + B;
                result = temp_result[31:0];
                C = temp_result[32]; 
                V = (A[31] == B[31]) && (result[31] != A[31]); 
            end
            2'b11: begin // SUB
                temp_result = A - B;
                result = temp_result[31:0];
                C = temp_result[32]; 
                V = (A[31] != B[31]) && (result[31] != A[31]); 
            end
            default: begin
                result = 0;
            end
        endcase

        N = result[31]; 
        Z = (result == 0); 
    end

    assign ALUFlags = {N, Z, C, V};
endmodule
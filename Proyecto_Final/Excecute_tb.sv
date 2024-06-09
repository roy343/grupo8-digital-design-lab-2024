module Excecute_tb;

logic [31:0]   A;
logic [31:0]   B;
logic [3:0] opcode;
 
logic [31:0] result;
logic  [3:0]  ALUFlags;

ALU Alu_X(
.A(A),
.B(B),
.opcode(opcode),
.result(result),
.ALUFlags(ALUFlags)
    );


initial begin

 A = 32'd5;
 B = 32'd8;
 opcode = 4'b0100;
 
 #5
 
 opcode = 4'b0101;
 
 #5
 A = 32'd1;
 B = 32'd4;
 opcode = 4'b0100;
 
 #5
 
 opcode = 4'b0101;
 
 #5
 
 B = 32'd15;
 
 #5
 
 opcode = 4'b0111;
 
 #5
$finish;
end
endmodule
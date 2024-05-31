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

 A = 32'd15;
 B = 32'd10;
 opcode = 4'b0010;
 
 #5
 
 opcode = 4'b0001;
 
 #5
 
 opcode = 4'b0000;
 
 #5
 opcode = 4'b0110;
 
 #5
 
 B = 32'd15;
 
 #5
 
 opcode = 4'b0111;
 
 #5
$finish;
end
endmodule
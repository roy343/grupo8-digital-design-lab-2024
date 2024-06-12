module Decoder (
	input logic [1:0] Op,
	input logic [5:0] Funct,
	input logic [3:0] Rd,
	output logic RegW, MemW, MemtoReg, ALUSrc, PCS, NoWrite, Byte,
	output logic [1:0] ImmSrc, RegSrc, FlagW,
	output logic [1:0] ALUControl
);

	logic Branch, ALUOp;

	Main_Decoder maindeco(
		.Op(Op),
		.Funct(Funct),
		.Branch(Branch), 
		.RegW(RegW), 
		.MemW(MemW), 
		.MemtoReg(MemtoReg), 
		.ALUSrc(ALUSrc), 
		.ALUOp(ALUOp),
		.Byte(Byte),
		.ImmSrc(ImmSrc), 
		.RegSrc(RegSrc)
	);
	
	PC_Logic pclogic(
		.Rd(Rd),
		.Branch(Branch), 
		.RegW(RegW), 
		.PCS(PCS)
	);
	
	ALU_Decoder aludeco(
		.ALUOp(ALUOp),
		.Funct(Funct[4:0]),
		.FlagW(FlagW),
		.ALUControl(ALUControl),
		.NoWrite(NoWrite)
	);

endmodule
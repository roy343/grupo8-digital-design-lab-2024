module Control_Unit (
	input logic clk,
	input logic [3:0] Cond, Rd, ALUFlags,
	input logic [1:0] Op,
	input logic [5:0] Funct,
	output logic PCSrc, RegWrite, MemWrite, MemtoReg, ALUSrc,
	output logic [1:0] ImmSrc, RegSrc, 
	output logic [4:0] ALUControl
);

	logic PCS, MemW, RegW, NoWrite;
	logic [1:0] FlagW;

	Conditional_Logic condlogic(
		.clk(clk), 
		.PCS(PCS), 
		.MemW(MemW), 
		.RegW(RegW),
		.NoWrite(NoWrite),
		.FlagW(FlagW),
		.Cond(Cond), 
		.ALUFlags(ALUFlags),
		.PCSrc(PCSrc), 
		.RegWrite(RegWrite), 
		.MemWrite(MemWrite)
	);
	
	Decoder deco(
		.Op(Op),
		.Funct(Funct),
		.Rd(Rd),
		.RegW(RegW), 
		.MemW(MemW), 
		.MemtoReg(MemtoReg), 
		.ALUSrc(ALUSrc), 
		.PCS(PCS),
		.NoWrite(NoWrite),
		.ImmSrc(ImmSrc), 
		.RegSrc(RegSrc), 
		.FlagW(FlagW),
		.ALUControl(ALUControl)
	);

endmodule
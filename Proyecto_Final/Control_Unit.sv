module Control_Unit (
	input logic clk,
	input logic [3:0] Cond, Rd, ALUFlags,
	input logic [1:0] Op,
	input logic [5:0] Funct,
	output logic PCSrc, MemtoReg, ALUSrc,
	output logic [1:0] ImmSrc, RegSrc, RegWrite, MemWrite, 
	output logic [1:0] ALUControl
);

	logic PCS, MemW, RegW, NoWrite, RegW1, MemW1, Byte;
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
		.RegWrite(RegW1), 
		.MemWrite(MemW1)
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
		.Byte(Byte),
		.ImmSrc(ImmSrc), 
		.RegSrc(RegSrc), 
		.FlagW(FlagW),
		.ALUControl(ALUControl)
	);

	assign RegWrite = {Byte, RegW1};
	assign MemWrite = {Byte, MemW1};
	
endmodule
module Conditional_Logic (
	input logic clk, PCS, MemW, RegW, NoWrite,
	input logic [1:0] FlagW,
	input logic [3:0] Cond, ALUFlags,
	output logic PCSrc, RegWrite, MemWrite
);

	logic CondEx;
	logic [1:0] FlagWrite, Flags32, Flags10;

	assign FlagWrite = FlagW & { 1'b0, CondEx };
	
	Flagsreg flagsreg32(
		.clk(clk), 
		.enable(FlagWrite[1]),
		.in(ALUFlags[3:2]),
		.out(Flags32)
	);

	Flagsreg flagsreg10(
		.clk(clk), 
		.enable(FlagWrite[0]),
		.in(ALUFlags[1:0]),
		.out(Flags10)
	);
	
	Condition_Check condcheck(
		.Cond(Cond),
		.ALUFlags32(Flags32), 
		.ALUFlags10(Flags10),
		.CondEx(CondEx)
	);
	
	assign PCSrc = PCS & CondEx;
	assign RegWrite = RegW & CondEx & ~NoWrite;
	assign MemWrite = MemW & CondEx;
	
endmodule
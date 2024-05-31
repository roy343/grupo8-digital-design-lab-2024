module processorTop (
	input logic clk, rst
);

	logic [31:0] PCact, PCnext, PCp4, PCp8, ProgInstruction, Result, data1, data2, ExtImm, SrcB, ALUResult, ReadData;
	logic [1:0] RegSrc, ImmSrc; 
	logic [3:0] ReadAddr1, ReadAddr2, ALUControl, ALUFlags;
	logic ALUSrc, RegWrite, MemWrite, MemtoReg, PCSrc;

	// MUX PCSrc
	MUX #(.N(32)) pcsr( 
		.select(PCSrc),
		.in1(PCp4), 
		.in2(Result),
		.out(PCnext)
	);
	
	// Program Counter
	Program_counter PC (
		.clk(clk),
		.rst(rst),
		.in(PCnext),
		.out(PCact)
	);
	
	// PC + 4
	Adder ADD4 (
		.a(PCact), 
		.b(32'h4),
		.s(PCp4)
	);
	
	// PC + 8
	Adder ADD8 (
		.a(PCp4), 
		.b(32'h4),
		.s(PCp8)
	);
	
	// Instruction Memory
	InstMem Imem (
		 .Read_Address(PCact),
		 .Instruction(ProgInstruction)
	);
	
	// MUX RegSrc0
	MUX #(.N(4)) regsrc0( 
		.select(RegSrc[0]),
		.in1(ProgInstruction[19:16]), 
		.in2(4'b1111),
		.out(ReadAddr1)
	);

	// MUX RegSrc1
	MUX #(.N(4)) regsrc1( 
		.select(RegSrc[1]),
		.in1(ProgInstruction[3:0]), 
		.in2(ProgInstruction[15:12]),
		.out(ReadAddr2)
	);
	
	// Register File
	Register register(
		.rs1(ReadAddr1),
		.rs2(ReadAddr2),
		.rd(ProgInstruction[15:12]),
		.w_data(Result),
		.clk(clk),
		.w_enable(RegWrite),
		.rs15(PCp8),
		.data1(data1),
		.data2(data2)
	);
	
	// Extend
	Extend ext(
		 .Instruction(ProgInstruction[23:0]),
		 .ImmSrc(ImmSrc),
		 .Immediate(ExtImm)
	);

	// MUX ALUSrc
	MUX #(.N(32)) alusr( 
		.select(ALUSrc),
		.in1(data2), 
		.in2(ExtImm),
		.out(SrcB)
	);
	
	// ALU
	ALU alu(
		.A(data1),
		.B(SrcB),
		.opcode(ALUControl),
		.result(ALUResult),
		.ALUFlags(ALUFlags)
	); 
	
	// Data Memory
	DataMem dmem(
		 .clk(clk),
		 .Address(ALUResult),
		 .Write_data(data2),
		 .MemWrite(MemWrite),
		 .Read_data(ReadData)
	);
	
	// MUX MemtoReg
	MUX #(.N(32)) mem2reg( 
		.select(MemtoReg),
		.in1(ALUResult), 
		.in2(ReadData),
		.out(Result)
	);
	
	Control_Unit controlunit(
		.clk(clk),
		.Cond(ProgInstruction[31:28]), 
		.Rd(ProgInstruction[15:12]), 
		.ALUFlags(ALUFlags),
		.Op(ProgInstruction[27:26]),
		.Funct(ProgInstruction[25:20]),
		.PCSrc(PCSrc), 
		.RegWrite(RegWrite), 
		.MemWrite(MemWrite), 
		.MemtoReg(MemtoReg), 
		.ALUSrc(ALUSrc),
		.ImmSrc(ImmSrc), 
		.RegSrc(RegSrc), 
		.ALUControl(ALUControl)
	);

	
endmodule
module DataMem (
    input logic clk,
    input logic [31:0] Address,
    input logic [31:0] Write_data,
    input logic MemWrite,
    input logic MemRead,
    output logic [31:0] Read_data
);

    reg [31:0] Memory [0:31];

	 initial begin
        $readmemh("ProyectoCorto_data.hex", Memory);
    end

    always @* begin
		if (MemRead) begin
            Read_data = Memory[Address[9:2]];
      end
	 end
	 
    always @(posedge clk) begin
        if (MemWrite) begin
            Memory[Address] <= Write_data;
        end
    end

endmodule
module DataMem (
    input logic clk,
    input logic  [31:0] Address, Address1,
    input logic  [31:0] Write_data, Write_data1,
    input logic  [1:0]  MemWrite,
    output logic [31:0] Read_data, Read_data1
);

    reg [31:0] Memory [0:511];

	 initial begin
        $readmemh("projectText3.hex", Memory);
    end

    always @* begin
		  Read_data1 = Memory[Address1];
		  Read_data = Memory[Address[31:2]]; // Load word
		  if (MemWrite[1]) begin  // Load Byte
			  case (Address[1:0])
					2'b00: Read_data = {{24{1'b0}}, Memory[Address[31:2]][7:0]};    
					2'b01: Read_data = {{24{1'b0}}, Memory[Address[31:2]][15:8]};   
					2'b10: Read_data = {{24{1'b0}}, Memory[Address[31:2]][23:16]};  
					2'b11: Read_data = {{24{1'b0}}, Memory[Address[31:2]][31:24]};  
			  endcase
		  end
	 end
	 
    always @(posedge clk) begin
		  Memory[510] <= Write_data1;
        if (MemWrite[0]) begin
            case (MemWrite[1])
                1'b0: Memory[Address[31:2]] <= Write_data;  // Store word
                1'b1: begin  // Store byte
                    case (Address[1:0])
                        2'b00: Memory[Address[31:2]] <= {Memory[Address[31:2]][31:8], Write_data[7:0]};
                        2'b01: Memory[Address[31:2]] <= {Memory[Address[31:2]][31:16], Write_data[7:0], Memory[Address[31:2]][7:0]};
                        2'b10: Memory[Address[31:2]] <= {Memory[Address[31:2]][31:24], Write_data[7:0], Memory[Address[31:2]][15:0]};
                        2'b11: Memory[Address[31:2]] <= {Write_data[7:0], Memory[Address[31:2]][23:0]};
                    endcase
                end
            endcase
        end
    end

endmodule
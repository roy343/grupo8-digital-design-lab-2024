module DataMem_tb;

    logic clk;
    logic [31:0] Address;
    logic [31:0] Write_data;
    logic [1:0]   MemWrite;
    logic [31:0] Read_data;

    DataMem data_mem (
        .clk(clk),
        .Address(Address),
        .Write_data(Write_data),
        .MemWrite(MemWrite),
        .Read_data(Read_data)
    );

    always begin
        #5 clk = ~clk; 
    end

    initial begin

        Address = 32'h0;
        Write_data = 32'h12345678;
        MemWrite = 2'b00;
        clk = 0;

        #10;
		  
		  MemWrite = 2'b10;

		  #10;
		  
		  Address = 32'h2;
		  
        #5;
        MemWrite = 2'b11;
        Address = 32'h5;
        Write_data = 32'h58;
        #10;
        MemWrite = 2'b00;

        #5;
        Address = 32'h5;
        #10;

        $finish;
    end
endmodule
module DataMem_tb;

    logic clk;
    logic [31:0] Address;
    logic [31:0] Write_data;
    logic MemWrite;
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
        MemWrite = 0;
        clk = 0;

        #10;

        #5;
        MemWrite = 1;
        Address = 32'h5;
        Write_data = 32'hABCDEF01;
        #10;
        MemWrite = 0;

        #5;
        Address = 32'h5;
        #10;

        $finish;
    end
endmodule
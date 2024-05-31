module Fetch_tb;

    logic clk;
    logic [31:0] Read_Address;
    logic [31:0] Instruction;

    InstMem inst_mem (
        .Read_Address(Read_Address),
        .Instruction(Instruction)
    );

    always begin
        #5 clk = ~clk; 
    end

    initial begin
        Read_Address = 0;
        clk = 0;

        #10;


        forever begin
            @ (posedge clk);
            Read_Address = Read_Address + 32'd4;
        end
    end

    initial begin
        #80; 
        $finish;
    end

endmodule
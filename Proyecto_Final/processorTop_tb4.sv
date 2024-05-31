module processorTop_tb4;
    logic clk, rst;

    processorTop unicycle(
    .clk(clk),
    .rst(rst)
    );

    always begin
        #5 clk = ~clk; 
    end

    initial begin

        clk = 0;
        rst = 0;

        #10;

        rst = 1;

        #10;

        rst = 0;
        
        #200;
        
        $finish;
    end
endmodule
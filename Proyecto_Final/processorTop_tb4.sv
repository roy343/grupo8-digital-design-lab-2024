module processorTop_tb4;
    logic clk, rst;
	 logic [31:0] addr, data;

    processorTop unicycle(
    .clk(clk),
    .rst(rst),
	 .address(addr),
	 .ram_data(data)
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
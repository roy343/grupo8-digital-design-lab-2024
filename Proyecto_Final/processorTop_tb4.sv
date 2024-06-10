module processorTop_tb4;
    logic clk, rst, run;
	 logic [3:0] vowels;
	 logic [31:0] addr, data;

    processorTop unicycle(
    .clk(clk),
    .rst(rst),
	 .run(run),
	 .vowels(vowels),
	 .address(addr),
	 .ram_data(data)
    );

    always begin
        #5 clk = ~clk; 
    end

    initial begin

        clk = 0;
        rst = 0;
		  run = 1;
		  vowels = 4'd1;

        #10;

        rst = 1;

        #10;

        rst = 0;
        
        #200;
        
        $finish;
    end
endmodule
`timescale 1ns / 1ps

module pCounter_tb();
    
    logic clk = 0, r;
    logic [1:0] out2;
    
    pCounter #(2) counter (
        .clk(clk),
        .r(r),
        .out(out2)
    );

    initial begin
        forever #2 clk = ~clk;
    end
    
    initial begin
        r = 1; 
        #1 r = 0; 
		  #6 r = 1; 
        #1 r = 0; 
    end
	 
    initial begin
        #20 $stop; 
    end

endmodule
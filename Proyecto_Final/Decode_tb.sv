module Decode_tb;

logic [4:0]  rs1;
logic [4:0]  rs2;
logic [4:0]  rd;
logic [31:0] w_data;
logic        clk;
logic        w_enable;
logic [31:0] rs15;

logic [31:0]    data1;
logic [31:0]    data2;

Register reg_i(
 .rs1      (rs1),
 .rs2      (rs2),
 .rd       (rd),
 .w_data   (w_data),
 .clk      (clk),
 .w_enable (w_enable),
 .rs15	  (rs15),
 .data1    (data1),
 .data2    (data2)
 );
 

always begin
    #5 clk = ~clk; 
end


initial begin
	 clk = 0;
	 rs1 = 5'd10;
    rs2 = 5'd5;
	 rs15 = 32'd8;
	 rd = 5'd10;
    w_enable = 0;
    w_data = 32'd40;
	 
	 #10;
	 
    rs1 = 5'd10;
    rs2 = 5'd8;
	 rs15 = 32'd16;
	 rd = 5'd11;
    w_enable = 1;
    w_data = 32'd40;
    
    #10;
    
    rs1 = 5'd20;
    rs2 = 5'd4;
	 rs15 = 32'd24;
	 rd = 5'd12;
    w_enable = 0;
    w_data = 32'd3;
    
    #10;
    
    rs1 = 5'd12;
    rs2 = 5'd2;
	 rs15 = 32'd32;
	 rd = 5'd0;
    w_enable = 1;
    w_data = 32'd3;
    
    #10
	 
	 rs1 = 5'd0;
    rs2 = 5'd6;
	 rs15 = 32'd40;
	 rd = 5'd0;
    w_enable = 0;
    w_data = 32'd3;
    
    #10
    
    $finish;
    end

endmodule
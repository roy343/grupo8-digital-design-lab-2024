module clockDivider(
	input logic clk,
	output logic clk25);
	
	reg [15:0] cnt;
	   always @(posedge clk)
      {clk25, cnt} <= cnt + 16'h8000;
		
endmodule
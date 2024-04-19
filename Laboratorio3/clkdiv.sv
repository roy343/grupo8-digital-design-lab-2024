module clkdiv(
	input logic clk,
	output logic clk_25,
	output logic clk_1Hz
	);
	
	logic [15:0] cnt;
	logic [25:0] cnt1;
	   
	   always @(posedge clk) begin
			{clk_25, cnt} <= cnt + 16'h8000;
			{clk_1Hz, cnt1} <= cnt1 + 26'h2000000;
		end
		
endmodule

module registerInput  #(parameter N=4)(input [3:0] sel, 
													 input [N-1:0] a,b,
													 input clk, reset,
													 output reg [N-1:0] regA, regB,
													 output reg [3:0] regSel);
													 
	always @(posedge clk or posedge reset) begin
	
		if(reset) begin
			regA <= 0;
			regB <= 0;
			regSel <= 0;
			end
		else begin
			regA <= a;
			regB <= b;
			regSel <= sel;
			end
			
	end
	
endmodule
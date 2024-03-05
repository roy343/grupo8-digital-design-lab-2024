module registerOutput  #(parameter N=4)(
													 input [N-1:0] result,
													 input clk, rst, Nflag,Zflag, Cflag, Vflag,
													 output reg reg_Nflag, reg_Zflag, reg_Cflag, reg_Vflag,
													 output reg [N-1:0] regOutput);
													 
	always @(posedge clk or posedge rst) begin
	
		if(rst) begin
			reg_Nflag <= 0;
			reg_Zflag <= 0;
			reg_Cflag <= 0;
			reg_Vflag <= 0;
			regOutput <= 0;
			end
		else begin
			reg_Nflag <= Nflag;
			reg_Zflag <= Zflag;
			reg_Cflag <= Cflag;
			reg_Vflag <= Vflag;
			regOutput <= regOutput;
			end
			
	end
	
endmodule
module displayConverter (
		input logic [3:0] numAct, 
		output logic [13:0] dispOut
	);

	always_comb begin
		case (numAct)
        4'b0000: dispOut = 14'b1111111_1000000; 
        4'b0001: dispOut = 14'b1111111_1111001; 
        4'b0010: dispOut = 14'b1111111_0100100; 
        4'b0011: dispOut = 14'b1111111_0110000; 
        4'b0100: dispOut = 14'b1111111_0011001; 
        4'b0101: dispOut = 14'b1111111_0010010; 
        4'b0110: dispOut = 14'b1111111_0000010; 
        4'b0111: dispOut = 14'b1111111_1111000; 
        4'b1000: dispOut = 14'b1111111_0000000; 
        4'b1001: dispOut = 14'b1111111_0010000; 
		  4'b1010: dispOut = 14'b1111001_1000000; 
		  4'b1011: dispOut = 14'b1111001_1111001; 
		  4'b1100: dispOut = 14'b1111001_0100100; 
		  4'b1101: dispOut = 14'b1111001_0110000; 
		  4'b1110: dispOut = 14'b1111001_0011001; 
		  4'b1111: dispOut = 14'b1111001_0010010; 
		endcase
	end

endmodule 
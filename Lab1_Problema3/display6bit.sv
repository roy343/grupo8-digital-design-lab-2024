module display6bit (
    input logic [5:0] numAct,
    output logic [13:0] dispOut
);

	logic [3:0] segm1, segm2;

	always_comb begin
    segm2 = numAct[5:4];
    segm1 = numAct[3:0];
	end

	always_comb begin
		case (segm1)
        4'b0000: dispOut[6:0] = 7'b1000000; 
        4'b0001: dispOut[6:0] = 7'b1111001; 
        4'b0010: dispOut[6:0] = 7'b0100100; 
        4'b0011: dispOut[6:0] = 7'b0110000; 
        4'b0100: dispOut[6:0] = 7'b0011001; 
        4'b0101: dispOut[6:0] = 7'b0010010; 
        4'b0110: dispOut[6:0] = 7'b0000010; 
        4'b0111: dispOut[6:0] = 7'b1111000; 
        4'b1000: dispOut[6:0] = 7'b0000000; 
        4'b1001: dispOut[6:0] = 7'b0010000; 
        4'b1000: dispOut[6:0] = 7'b0000000; 
		  4'b1001: dispOut[6:0] = 7'b0010000; 
		  4'b1010: dispOut[6:0] = 7'b0001000; 
		  4'b1011: dispOut[6:0] = 7'b0000011; 
		  4'b1100: dispOut[6:0] = 7'b1000110; 
		  4'b1101: dispOut[6:0] = 7'b0100001; 
		  4'b1110: dispOut[6:0] = 7'b0000110; 
		  4'b1111: dispOut[6:0] = 7'b0001110; 
		endcase

		case (segm2)
        4'b0000: dispOut[13:7] = 7'b1000000; 
        4'b0001: dispOut[13:7] = 7'b1111001; 
        4'b0010: dispOut[13:7] = 7'b0100100; 
        4'b0011: dispOut[13:7] = 7'b0110000; 
        4'b0100: dispOut[13:7] = 7'b0011001; 
        4'b0101: dispOut[13:7] = 7'b0010010; 
        4'b0110: dispOut[13:7] = 7'b0000010; 
        4'b0111: dispOut[13:7] = 7'b1111000; 
        4'b1000: dispOut[13:7] = 7'b0000000; 
        4'b1001: dispOut[13:7] = 7'b0010000; 
        4'b1000: dispOut[13:7] = 7'b0000000; 
		  4'b1001: dispOut[13:7] = 7'b0010000; 
		  4'b1010: dispOut[13:7] = 7'b0001000; 
		  4'b1011: dispOut[13:7] = 7'b0000011; 
	     4'b1100: dispOut[13:7] = 7'b1000110; 
		  4'b1101: dispOut[13:7] = 7'b0100001; 
		  4'b1110: dispOut[13:7] = 7'b0000110; 
		  4'b1111: dispOut[13:7] = 7'b0001110; 
		endcase
	end

endmodule
module mov_control (
		input logic x, y,
		input logic [3:0] mov,
		output logic outX, outY
	);
	
	always @(mov) begin
		if (mov == 1000) begin // left
			if (y == 0) begin
				outX = x;
				outY = y;
			end else begin
				outX = x;
				outY = y - 1;
			end
		end else if (mov == 0100) begin // up
			if (x == 0) begin
				outX = x;
				outY = y;
			end else begin
				outX = x - 1;
				outY = y;
			end
		end else if (mov == 0010) begin // down
			if (x == 4) begin
				outX = x;
				outY = y;
			end else begin
				outX = x + 1;
				outY = y;
			end
		end else if (mov == 0001) begin // right
			if (y == 4) begin
				outX = x;
				outY = y;
			end else begin
				outX = x;
				outY = y + 1;
			end
		end
	end
	
endmodule
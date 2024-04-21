module mov_control (
		input logic [2:0] x, y,
		input logic [3:0] mov,
		output logic [2:0] outX, outY
	);
	
	always @(mov) begin
		if (mov == 4'b1000) begin // left
			if (y == 0) begin
				outX = x;
				outY = y;
			end else begin
				outX = x;
				outY = y - 1;
			end
		end else if (mov == 4'b0100) begin // up
			if (x == 0) begin
				outX = x;
				outY = y;
			end else begin
				outX = x - 1;
				outY = y;
			end
		end else if (mov == 4'b0010) begin // down
			if (x == 4) begin
				outX = x;
				outY = y;
			end else begin
				outX = x + 1;
				outY = y;
			end
		end else if (mov == 4'b0001) begin // right
			if (y == 4) begin
				outX = x;
				outY = y;
			end else begin
				outX = x;
				outY = y + 1;
			end
		end else begin
			if (y < 0 || y > 4 || x < 0 || x > 4) begin
				outX = 0;
				outY = 0;
			end 
		end
	end
	
endmodule
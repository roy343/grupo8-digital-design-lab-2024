module mov_control (
		input logic [2:0] x, y,
		input logic [3:0] mov,
		output logic [2:0] outX, outY
	);
	
	always @(mov) begin
		if (mov == 4'b1000) begin // left
			if (y == 3'd0) begin
				outX = x;
				outY = y;
			end else begin
				outX = x;
				outY = y - 3'd1;
			end
		end else if (mov == 4'b0100) begin // up
			if (x == 3'd0) begin
				outX = x;
				outY = y;
			end else begin
				outX = x - 3'd1;
				outY = y;
			end
		end else if (mov == 4'b0010) begin // down
			if (x == 3'd4) begin
				outX = x;
				outY = y;
			end else begin
				outX = x + 3'd1;
				outY = y;
			end
		end else if (mov == 4'b0001) begin // right
			if (y == 3'd4) begin
				outX = x;
				outY = y;
			end else begin
				outX = x;
				outY = y + 3'd1;
			end
		end else begin
			if (y < 3'd0 || y > 3'd4 || x < 3'd0 || x > 3'd4) begin
				outX = 3'd0;
				outY = 3'd0;
			end 
		end
	end
	
endmodule
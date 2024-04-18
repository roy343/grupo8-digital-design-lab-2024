module Envplay (
		input logic clk, enable,
		input logic [2:0] board_in[4:0][4:0],
		output logic [2:0] board_out[4:0][4:0],
		output logic done
	);
	
	logic [2:0] local_board[4:0][4:0];
	logic [3:0] seedX = 4'b0000;
	logic [2:0] seedY = 3'b110;

	always_ff @(posedge clk) begin
		if (seedX == 4'b1111 ) begin
         seedX <= 4'd0;
		end if (seedY == 3'b111 ) begin
			seedY <= 3'd0;
		end else begin
         seedX <= seedX + 1;
			seedY <= seedY + 1;
		end
   end
	
	initial begin
		local_board = board_in;
	end
	
	always @(posedge clk) begin
		done = 0;
		if (enable) begin
			
			if (local_board[seedX & 4'b11][seedY & 3'b11] == 3'd0) begin // missed shot
					local_board[seedX & 4'b11][seedY & 3'b11] = 3'd7;
					done = 1;
			end else if (local_board[seedX & 4'b11][seedY & 3'b11] == 3'd1 || local_board[seedX & 4'b11][seedY & 3'b11] == 3'd2 ||
			 local_board[seedX & 4'b11][seedY & 3'b11] == 3'd3 || local_board[seedX & 4'b11][seedY & 3'b11] == 3'd4 ||
			 local_board[seedX & 4'b11][seedY & 3'b11] == 3'd5) begin // ship hit
					local_board[seedX & 4'b11][seedY & 3'b11] = 3'd6;
					done = 1;
			end
		end
	end
	
	assign board_out = local_board;
	
endmodule
module Epos_ships (
		input logic clk, enable,
		input logic [2:0] shipQ,
		input logic [1:0] board_in[4:0][4:0],
		output logic [1:0] board_out[4:0][4:0],
		output logic placed
	);
	
	logic [2:0] placedQ = 0;
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
	
	always @(posedge enable) begin
		placed = 0;
		while (placedQ < shipQ) begin
			case(placedQ) 
				
				0: begin
					board_in[seedX & 4'b11][seedY & 3'b11] = 2'd1;
					placedQ = placedQ + 1;
				end
				
				1: begin
				
					if ((seedY & 3'b11) < 4) begin
						if ((board_in[seedX & 4'b11][seedY & 3'b11] == 2'd0 && board_in[seedX & 4'b11][(seedY & 3'b11)+1] == 2'd0)) begin
							board_in[seedX & 4'b11][seedY & 3'b11] = 2'd1;
							board_in[seedX & 4'b11][(seedY & 3'b11)+1] = 2'd1;
							placedQ = placedQ + 1;
						end else if (board_in[seedX & 4'b100][seedY & 3'b11] == 2'd0 && board_in[seedX & 4'b100][(seedY & 3'b11)+1] == 2'd0) begin
							board_in[seedX & 4'b100][seedY & 3'b11] = 2'd1;
							board_in[seedX & 4'b100][(seedY & 3'b11)+1] = 2'd1;
							placedQ = placedQ + 1;
						end
					end
				
				end
				
				2: begin
				
					if ((seedY & 3'b11) < 3) begin
						if (board_in[seedX & 4'b11][seedY & 3'b11] == 2'd0 && board_in[seedX & 4'b11][(seedY & 3'b11)+1] == 2'd0 && board_in[seedX & 4'b11][(seedY & 3'b11)+2] == 2'd0) begin
							board_in[seedX & 4'b11][seedY & 3'b11] = 2'd1;
							board_in[seedX & 4'b11][(seedY & 3'b11)+1] = 2'd1;
							board_in[seedX & 4'b11][(seedY & 3'b11)+2] = 2'd1;
							placedQ = placedQ + 1;
						end else if (board_in[seedX & 4'b100][seedY & 3'b11] == 2'd0 && board_in[seedX & 4'b100][(seedY & 3'b11)+1] == 2'd0 && board_in[seedX & 4'b100][(seedY & 3'b11)+2] == 2'd0) begin
							board_in[seedX & 4'b100][seedY & 3'b11] = 2'd1;
							board_in[seedX & 4'b100][(seedY & 3'b11)+1] = 2'd1;
							board_in[seedX & 4'b100][(seedY & 3'b11)+2] = 2'd1;
							placedQ = placedQ + 1;
						end
					end
				
				end
				
				3: begin
				
					if ((seedY & 3'b11) < 2) begin
						if (board_in[seedX & 4'b11][seedY & 3'b11] == 2'd0 && board_in[seedX & 4'b11][(seedY & 3'b11)+1] == 2'd0 && board_in[seedX & 4'b11][(seedY & 3'b11)+2] == 2'd0 && board_in[seedX & 4'b11][(seedY & 3'b11)+3] == 2'd0) begin
							board_in[seedX & 4'b11][seedY & 3'b11] = 2'd1;
							board_in[seedX & 4'b11][(seedY & 3'b11)+1] = 2'd1;
							board_in[seedX & 4'b11][(seedY & 3'b11)+2] = 2'd1;
							board_in[seedX & 4'b11][(seedY & 3'b11)+3] = 2'd1;
							placedQ = placedQ + 1;
						end else if (board_in[seedX & 4'b100][seedY & 3'b11] == 2'd0 && board_in[seedX & 4'b100][(seedY & 3'b11)+1] == 2'd0 && board_in[seedX & 4'b100][(seedY & 3'b11)+2] == 2'd0 && board_in[seedX & 4'b100][(seedY & 3'b11)+3] == 2'd0) begin
							board_in[seedX & 4'b100][seedY & 3'b11] = 2'd1;
							board_in[seedX & 4'b100][(seedY & 3'b11)+1] = 2'd1;
							board_in[seedX & 4'b100][(seedY & 3'b11)+2] = 2'd1;
							board_in[seedX & 4'b100][(seedY & 3'b11)+3] = 2'd1;
							placedQ = placedQ + 1;
						end
					end
				
				end
				
				4: begin
				
					if ((seedY & 3'b11) < 1) begin
						if (board_in[seedX & 4'b11][seedY & 3'b11] == 2'd0 && board_in[seedX & 4'b11][(seedY & 3'b11)+1] == 2'd0 && board_in[seedX & 4'b11][(seedY & 3'b11)+2] == 2'd0 && board_in[seedX & 4'b11][(seedY & 3'b11)+3] == 2'd0 && board_in[seedX & 4'b11][(seedY & 3'b11)+4] == 2'd0) begin
							board_in[seedX & 4'b11][seedY & 3'b11] = 2'd1;
							board_in[seedX & 4'b11][(seedY & 3'b11)+1] = 2'd1;
							board_in[seedX & 4'b11][(seedY & 3'b11)+2] = 2'd1;
							board_in[seedX & 4'b11][(seedY & 3'b11)+3] = 2'd1;
							board_in[seedX & 4'b11][(seedY & 3'b11)+4] = 2'd1;
							placedQ = placedQ + 1;
						end else if (board_in[seedX & 4'b100][seedY & 3'b11] == 2'd0 && board_in[seedX & 4'b100][(seedY & 3'b11)+1] == 2'd0 && board_in[seedX & 4'b100][(seedY & 3'b11)+2] == 2'd0 && board_in[seedX & 4'b100][(seedY & 3'b11)+3] == 2'd0 && board_in[seedX & 4'b100][(seedY & 3'b11)+4] == 2'd0) begin
							board_in[seedX & 4'b100][seedY & 3'b11] = 2'd1;
							board_in[seedX & 4'b100][(seedY & 3'b11)+1] = 2'd1;
							board_in[seedX & 4'b100][(seedY & 3'b11)+2] = 2'd1;
							board_in[seedX & 4'b100][(seedY & 3'b11)+3] = 2'd1;
							board_in[seedX & 4'b100][(seedY & 3'b11)+4] = 2'd1;
							placedQ = placedQ + 1;
						end
					end
				
				end
				
			endcase
		end
		
		if (placedQ = shipQ) begin
			board_out = board_in;
			placed = 1;
		end
		
	end
	
endmodule
module paintScreen (
		input logic [9:0] next_x, next_y,
		input logic [2:0] playerBoard[4:0][4:0],
		input logic [2:0] EnvBoard[4:0][4:0],
		output logic [7:0] pixel_color
	);
	
	always @(next_x or next_y) begin
		if (63 < next_x && next_x < 224 && 159 < next_y && next_y < 320) begin
			if (63 < next_x && next_x < 96 && 159 < next_y && next_y < 192) begin
				case(EnvBoard[0][0])
					0: pixel_color = 8'b00011111; // Light blue
               1, 2, 3, 4, 5: pixel_color = 8'b10010010; // Gray
					6: pixel_color = 8'b10110000; // Red
					7: pixel_color = 8'b11110000; // Yellow
               default: pixel_color = 8'b00000000; // Default to black
            endcase
			end else if (95 < next_x && next_x < 128 && 159 < next_y && next_y < 192) begin
				case(EnvBoard[0][1])
					0: pixel_color = 8'b00011111; // Light blue
               1, 2, 3, 4, 5: pixel_color = 8'b10010010; // Gray
					6: pixel_color = 8'b10110000; // Red
					7: pixel_color = 8'b11110000; // Yellow
               default: pixel_color = 8'b00000000; // Default to black
            endcase
			end else if (127 < next_x && next_x < 160 && 159 < next_y && next_y < 192) begin
				case(EnvBoard[0][2])
					0: pixel_color = 8'b00011111; // Light blue
               1, 2, 3, 4, 5: pixel_color = 8'b10010010; // Gray
					6: pixel_color = 8'b10110000; // Red
					7: pixel_color = 8'b11110000; // Yellow
               default: pixel_color = 8'b00000000; // Default to black
            endcase
			end else if (159 < next_x && next_x < 192 && 159 < next_y && next_y < 192) begin
				case(EnvBoard[0][3])
					0: pixel_color = 8'b00011111; // Light blue
               1, 2, 3, 4, 5: pixel_color = 8'b10010010; // Gray
					6: pixel_color = 8'b10110000; // Red
					7: pixel_color = 8'b11110000; // Yellow
               default: pixel_color = 8'b00000000; // Default to black
            endcase
			end else if (191 < next_x && next_x < 224 && 159 < next_y && next_y < 192) begin
				case(EnvBoard[0][4])
					0: pixel_color = 8'b00011111; // Light blue
               1, 2, 3, 4, 5: pixel_color = 8'b10010010; // Gray
					6: pixel_color = 8'b10110000; // Red
					7: pixel_color = 8'b11110000; // Yellow
               default: pixel_color = 8'b00000000; // Default to black
            endcase
			end else if (63 < next_x && next_x < 96 && 191 < next_y && next_y < 224) begin
				case(EnvBoard[1][0])
					0: pixel_color = 8'b00011111; // Light blue
               1, 2, 3, 4, 5: pixel_color = 8'b10010010; // Gray
					6: pixel_color = 8'b10110000; // Red
					7: pixel_color = 8'b11110000; // Yellow
               default: pixel_color = 8'b00000000; // Default to black
            endcase
			end else if (95 < next_x && next_x < 128 && 191 < next_y && next_y < 224) begin
				case(EnvBoard[1][1])
					0: pixel_color = 8'b00011111; // Light blue
               1, 2, 3, 4, 5: pixel_color = 8'b10010010; // Gray
					6: pixel_color = 8'b10110000; // Red
					7: pixel_color = 8'b11110000; // Yellow
               default: pixel_color = 8'b00000000; // Default to black
            endcase
			end else if (127 < next_x && next_x < 160 && 191 < next_y && next_y < 224) begin
				case(EnvBoard[1][2])
					0: pixel_color = 8'b00011111; // Light blue
               1, 2, 3, 4, 5: pixel_color = 8'b10010010; // Gray
					6: pixel_color = 8'b10110000; // Red
					7: pixel_color = 8'b11110000; // Yellow
               default: pixel_color = 8'b00000000; // Default to black
            endcase
			end else if (159 < next_x && next_x < 192 && 191 < next_y && next_y < 224) begin
				case(EnvBoard[1][3])
					0: pixel_color = 8'b00011111; // Light blue
               1, 2, 3, 4, 5: pixel_color = 8'b10010010; // Gray
					6: pixel_color = 8'b10110000; // Red
					7: pixel_color = 8'b11110000; // Yellow
               default: pixel_color = 8'b00000000; // Default to black
            endcase
			end else if (191 < next_x && next_x < 224 && 191 < next_y && next_y < 224) begin
				case(EnvBoard[1][4])
					0: pixel_color = 8'b00011111; // Light blue
               1, 2, 3, 4, 5: pixel_color = 8'b10010010; // Gray
					6: pixel_color = 8'b10110000; // Red
					7: pixel_color = 8'b11110000; // Yellow
               default: pixel_color = 8'b00000000; // Default to black
            endcase
			end else if (63 < next_x && next_x < 96 && 223 < next_y && next_y < 256) begin
				case(EnvBoard[2][0])
					0: pixel_color = 8'b00011111; // Light blue
               1, 2, 3, 4, 5: pixel_color = 8'b10010010; // Gray
					6: pixel_color = 8'b10110000; // Red
					7: pixel_color = 8'b11110000; // Yellow
               default: pixel_color = 8'b00000000; // Default to black
            endcase
			end else if (95 < next_x && next_x < 128 && 223 < next_y && next_y < 256) begin
				case(EnvBoard[2][1])
					0: pixel_color = 8'b00011111; // Light blue
               1, 2, 3, 4, 5: pixel_color = 8'b10010010; // Gray
					6: pixel_color = 8'b10110000; // Red
					7: pixel_color = 8'b11110000; // Yellow
               default: pixel_color = 8'b00000000; // Default to black
            endcase
			end else if (127 < next_x && next_x < 160 && 223 < next_y && next_y < 256) begin
				case(EnvBoard[2][2])
					0: pixel_color = 8'b00011111; // Light blue
               1, 2, 3, 4, 5: pixel_color = 8'b10010010; // Gray
					6: pixel_color = 8'b10110000; // Red
					7: pixel_color = 8'b11110000; // Yellow
               default: pixel_color = 8'b00000000; // Default to black
            endcase
			end else if (159 < next_x && next_x < 192 && 223 < next_y && next_y < 256) begin
				case(EnvBoard[2][3])
					0: pixel_color = 8'b00011111; // Light blue
               1, 2, 3, 4, 5: pixel_color = 8'b10010010; // Gray
					6: pixel_color = 8'b10110000; // Red
					7: pixel_color = 8'b11110000; // Yellow
               default: pixel_color = 8'b00000000; // Default to black
            endcase
			end else if (191 < next_x && next_x < 224 && 223 < next_y && next_y < 256) begin
				case(EnvBoard[2][4])
					0: pixel_color = 8'b00011111; // Light blue
               1, 2, 3, 4, 5: pixel_color = 8'b10010010; // Gray
					6: pixel_color = 8'b10110000; // Red
					7: pixel_color = 8'b11110000; // Yellow
               default: pixel_color = 8'b00000000; // Default to black
            endcase
			end else if (63 < next_x && next_x < 96 && 255 < next_y && next_y < 288) begin
				case(EnvBoard[3][0])
					0: pixel_color = 8'b00011111; // Light blue
               1, 2, 3, 4, 5: pixel_color = 8'b10010010; // Gray
					6: pixel_color = 8'b10110000; // Red
					7: pixel_color = 8'b11110000; // Yellow
               default: pixel_color = 8'b00000000; // Default to black
            endcase
			end else if (95 < next_x && next_x < 128 && 255 < next_y && next_y < 288) begin
				case(EnvBoard[3][1])
					0: pixel_color = 8'b00011111; // Light blue
               1, 2, 3, 4, 5: pixel_color = 8'b10010010; // Gray
					6: pixel_color = 8'b10110000; // Red
					7: pixel_color = 8'b11110000; // Yellow
               default: pixel_color = 8'b00000000; // Default to black
            endcase
			end else if (127 < next_x && next_x < 160 && 255 < next_y && next_y < 288) begin
				case(EnvBoard[3][2])
					0: pixel_color = 8'b00011111; // Light blue
               1, 2, 3, 4, 5: pixel_color = 8'b10010010; // Gray
					6: pixel_color = 8'b10110000; // Red
					7: pixel_color = 8'b11110000; // Yellow
               default: pixel_color = 8'b00000000; // Default to black
            endcase
			end else if (159 < next_x && next_x < 192 && 255 < next_y && next_y < 288) begin
				case(EnvBoard[3][3])
					0: pixel_color = 8'b00011111; // Light blue
               1, 2, 3, 4, 5: pixel_color = 8'b10010010; // Gray
					6: pixel_color = 8'b10110000; // Red
					7: pixel_color = 8'b11110000; // Yellow
               default: pixel_color = 8'b00000000; // Default to black
            endcase
			end else if (191 < next_x && next_x < 224 && 255 < next_y && next_y < 288) begin
				case(EnvBoard[3][4])
					0: pixel_color = 8'b00011111; // Light blue
               1, 2, 3, 4, 5: pixel_color = 8'b10010010; // Gray
					6: pixel_color = 8'b10110000; // Red
					7: pixel_color = 8'b11110000; // Yellow
               default: pixel_color = 8'b00000000; // Default to black
            endcase
			end else if (63 < next_x && next_x < 96 && 287 < next_y && next_y < 320) begin
				case(EnvBoard[4][0])
					0: pixel_color = 8'b00011111; // Light blue
               1, 2, 3, 4, 5: pixel_color = 8'b10010010; // Gray
					6: pixel_color = 8'b10110000; // Red
					7: pixel_color = 8'b11110000; // Yellow
               default: pixel_color = 8'b00000000; // Default to black
            endcase
			end else if (95 < next_x && next_x < 128 && 287 < next_y && next_y < 320) begin
				case(EnvBoard[4][1])
					0: pixel_color = 8'b00011111; // Light blue
               1, 2, 3, 4, 5: pixel_color = 8'b10010010; // Gray
					6: pixel_color = 8'b10110000; // Red
					7: pixel_color = 8'b11110000; // Yellow
               default: pixel_color = 8'b00000000; // Default to black
            endcase
			end else if (127 < next_x && next_x < 160 && 287 < next_y && next_y < 320) begin
				case(EnvBoard[4][2])
					0: pixel_color = 8'b00011111; // Light blue
               1, 2, 3, 4, 5: pixel_color = 8'b10010010; // Gray
					6: pixel_color = 8'b10110000; // Red
					7: pixel_color = 8'b11110000; // Yellow
               default: pixel_color = 8'b00000000; // Default to black
            endcase
			end else if (159 < next_x && next_x < 192 && 287 < next_y && next_y < 320) begin
				case(EnvBoard[4][3])
					0: pixel_color = 8'b00011111; // Light blue
               1, 2, 3, 4, 5: pixel_color = 8'b10010010; // Gray
					6: pixel_color = 8'b10110000; // Red
					7: pixel_color = 8'b11110000; // Yellow
               default: pixel_color = 8'b00000000; // Default to black
            endcase
			end else if (191 < next_x && next_x < 224 && 287 < next_y && next_y < 320) begin
				case(EnvBoard[4][4])
					0: pixel_color = 8'b00011111; // Light blue
               1, 2, 3, 4, 5: pixel_color = 8'b10010010; // Gray
					6: pixel_color = 8'b10110000; // Red
					7: pixel_color = 8'b11110000; // Yellow
               default: pixel_color = 8'b00000000; // Default to black
            endcase
			end
		end else if (415 < next_x && next_x < 576 && 159 < next_y && next_y < 320) begin
			if (415 < next_x && next_x < 448 && 159 < next_y && next_y < 192) begin
				case(playerBoard[0][0])
					0: pixel_color = 8'b00011111; // Light blue
               1, 2, 3, 4, 5: pixel_color = 8'b10010010; // Gray
					6: pixel_color = 8'b10110000; // Red
					7: pixel_color = 8'b11110000; // Yellow
               default: pixel_color = 8'b00000000; // Default to black
            endcase
			end else if (447 < next_x && next_x < 480 && 159 < next_y && next_y < 192) begin
				case(playerBoard[0][1])
					0: pixel_color = 8'b00011111; // Light blue
               1, 2, 3, 4, 5: pixel_color = 8'b10010010; // Gray
					6: pixel_color = 8'b10110000; // Red
					7: pixel_color = 8'b11110000; // Yellow
               default: pixel_color = 8'b00000000; // Default to black
            endcase
			end else if (479 < next_x && next_x < 512 && 159 < next_y && next_y < 192) begin
				case(playerBoard[0][2])
					0: pixel_color = 8'b00011111; // Light blue
               1, 2, 3, 4, 5: pixel_color = 8'b10010010; // Gray
					6: pixel_color = 8'b10110000; // Red
					7: pixel_color = 8'b11110000; // Yellow
               default: pixel_color = 8'b00000000; // Default to black
            endcase
			end else if (511 < next_x && next_x < 544 && 159 < next_y && next_y < 192) begin
				case(playerBoard[0][3])
					0: pixel_color = 8'b00011111; // Light blue
               1, 2, 3, 4, 5: pixel_color = 8'b10010010; // Gray
					6: pixel_color = 8'b10110000; // Red
					7: pixel_color = 8'b11110000; // Yellow
               default: pixel_color = 8'b00000000; // Default to black
            endcase
			end else if (543 < next_x && next_x < 576 && 159 < next_y && next_y < 192) begin
				case(playerBoard[0][4])
					0: pixel_color = 8'b00011111; // Light blue
               1, 2, 3, 4, 5: pixel_color = 8'b10010010; // Gray
					6: pixel_color = 8'b10110000; // Red
					7: pixel_color = 8'b11110000; // Yellow
               default: pixel_color = 8'b00000000; // Default to black
            endcase
			end else if (415 < next_x && next_x < 448 && 191 < next_y && next_y < 224) begin
				case(playerBoard[1][0])
					0: pixel_color = 8'b00011111; // Light blue
               1, 2, 3, 4, 5: pixel_color = 8'b10010010; // Gray
					6: pixel_color = 8'b10110000; // Red
					7: pixel_color = 8'b11110000; // Yellow
               default: pixel_color = 8'b00000000; // Default to black
            endcase
			end else if (447 < next_x && next_x < 480 && 191 < next_y && next_y < 224) begin
				case(playerBoard[1][1])
					0: pixel_color = 8'b00011111; // Light blue
               1, 2, 3, 4, 5: pixel_color = 8'b10010010; // Gray
					6: pixel_color = 8'b10110000; // Red
					7: pixel_color = 8'b11110000; // Yellow
               default: pixel_color = 8'b00000000; // Default to black
            endcase
			end else if (479 < next_x && next_x < 512 && 191 < next_y && next_y < 224) begin
				case(playerBoard[1][2])
					0: pixel_color = 8'b00011111; // Light blue
               1, 2, 3, 4, 5: pixel_color = 8'b10010010; // Gray
					6: pixel_color = 8'b10110000; // Red
					7: pixel_color = 8'b11110000; // Yellow
               default: pixel_color = 8'b00000000; // Default to black
            endcase
			end else if (511 < next_x && next_x < 544 && 191 < next_y && next_y < 224) begin
				case(playerBoard[1][3])
					0: pixel_color = 8'b00011111; // Light blue
               1, 2, 3, 4, 5: pixel_color = 8'b10010010; // Gray
					6: pixel_color = 8'b10110000; // Red
					7: pixel_color = 8'b11110000; // Yellow
               default: pixel_color = 8'b00000000; // Default to black
            endcase
			end else if (543 < next_x && next_x < 576 && 191 < next_y && next_y < 224) begin
				case(playerBoard[1][4])
					0: pixel_color = 8'b00011111; // Light blue
               1, 2, 3, 4, 5: pixel_color = 8'b10010010; // Gray
					6: pixel_color = 8'b10110000; // Red
					7: pixel_color = 8'b11110000; // Yellow
               default: pixel_color = 8'b00000000; // Default to black
            endcase
			end else if (415 < next_x && next_x < 448 && 223 < next_y && next_y < 256) begin
				case(playerBoard[2][0])
					0: pixel_color = 8'b00011111; // Light blue
               1, 2, 3, 4, 5: pixel_color = 8'b10010010; // Gray
					6: pixel_color = 8'b10110000; // Red
					7: pixel_color = 8'b11110000; // Yellow
               default: pixel_color = 8'b00000000; // Default to black
            endcase
			end else if (447 < next_x && next_x < 480 && 223 < next_y && next_y < 256) begin
				case(playerBoard[2][1])
					0: pixel_color = 8'b00011111; // Light blue
               1, 2, 3, 4, 5: pixel_color = 8'b10010010; // Gray
					6: pixel_color = 8'b10110000; // Red
					7: pixel_color = 8'b11110000; // Yellow
               default: pixel_color = 8'b00000000; // Default to black
            endcase
			end else if (479 < next_x && next_x < 512 && 223 < next_y && next_y < 256) begin
				case(playerBoard[2][2])
					0: pixel_color = 8'b00011111; // Light blue
               1, 2, 3, 4, 5: pixel_color = 8'b10010010; // Gray
					6: pixel_color = 8'b10110000; // Red
					7: pixel_color = 8'b11110000; // Yellow
               default: pixel_color = 8'b00000000; // Default to black
            endcase
			end else if (511 < next_x && next_x < 544 && 223 < next_y && next_y < 256) begin
				case(playerBoard[2][3])
					0: pixel_color = 8'b00011111; // Light blue
               1, 2, 3, 4, 5: pixel_color = 8'b10010010; // Gray
					6: pixel_color = 8'b10110000; // Red
					7: pixel_color = 8'b11110000; // Yellow
               default: pixel_color = 8'b00000000; // Default to black
            endcase
			end else if (543 < next_x && next_x < 576 && 223 < next_y && next_y < 256) begin
				case(playerBoard[2][4])
					0: pixel_color = 8'b00011111; // Light blue
               1, 2, 3, 4, 5: pixel_color = 8'b10010010; // Gray
					6: pixel_color = 8'b10110000; // Red
					7: pixel_color = 8'b11110000; // Yellow
               default: pixel_color = 8'b00000000; // Default to black
            endcase
			end else if (415 < next_x && next_x < 448 && 255 < next_y && next_y < 288) begin
				case(playerBoard[3][0])
					0: pixel_color = 8'b00011111; // Light blue
               1, 2, 3, 4, 5: pixel_color = 8'b10010010; // Gray
					6: pixel_color = 8'b10110000; // Red
					7: pixel_color = 8'b11110000; // Yellow
               default: pixel_color = 8'b00000000; // Default to black
            endcase
			end else if (447 < next_x && next_x < 480 && 255 < next_y && next_y < 288) begin
				case(playerBoard[3][1])
					0: pixel_color = 8'b00011111; // Light blue
               1, 2, 3, 4, 5: pixel_color = 8'b10010010; // Gray
					6: pixel_color = 8'b10110000; // Red
					7: pixel_color = 8'b11110000; // Yellow
               default: pixel_color = 8'b00000000; // Default to black
            endcase
			end else if (479 < next_x && next_x < 512 && 255 < next_y && next_y < 288) begin
				case(playerBoard[3][2])
					0: pixel_color = 8'b00011111; // Light blue
               1, 2, 3, 4, 5: pixel_color = 8'b10010010; // Gray
					6: pixel_color = 8'b10110000; // Red
					7: pixel_color = 8'b11110000; // Yellow
               default: pixel_color = 8'b00000000; // Default to black
            endcase
			end else if (511 < next_x && next_x < 544 && 255 < next_y && next_y < 288) begin
				case(playerBoard[3][3])
					0: pixel_color = 8'b00011111; // Light blue
               1, 2, 3, 4, 5: pixel_color = 8'b10010010; // Gray
					6: pixel_color = 8'b10110000; // Red
					7: pixel_color = 8'b11110000; // Yellow
               default: pixel_color = 8'b00000000; // Default to black
            endcase
			end else if (543 < next_x && next_x < 576 && 255 < next_y && next_y < 288) begin
				case(playerBoard[3][4])
					0: pixel_color = 8'b00011111; // Light blue
               1, 2, 3, 4, 5: pixel_color = 8'b10010010; // Gray
					6: pixel_color = 8'b10110000; // Red
					7: pixel_color = 8'b11110000; // Yellow
               default: pixel_color = 8'b00000000; // Default to black
            endcase
			end else if (415 < next_x && next_x < 448 && 287 < next_y && next_y < 320) begin
				case(playerBoard[4][0])
					0: pixel_color = 8'b00011111; // Light blue
               1, 2, 3, 4, 5: pixel_color = 8'b10010010; // Gray
					6: pixel_color = 8'b10110000; // Red
					7: pixel_color = 8'b11110000; // Yellow
               default: pixel_color = 8'b00000000; // Default to black
            endcase
			end else if (447 < next_x && next_x < 480 && 287 < next_y && next_y < 320) begin
				case(playerBoard[4][1])
					0: pixel_color = 8'b00011111; // Light blue
               1, 2, 3, 4, 5: pixel_color = 8'b10010010; // Gray
					6: pixel_color = 8'b10110000; // Red
					7: pixel_color = 8'b11110000; // Yellow
               default: pixel_color = 8'b00000000; // Default to black
            endcase
			end else if (479 < next_x && next_x < 512 && 287 < next_y && next_y < 320) begin
				case(playerBoard[4][2])
					0: pixel_color = 8'b00011111; // Light blue
               1, 2, 3, 4, 5: pixel_color = 8'b10010010; // Gray
					6: pixel_color = 8'b10110000; // Red
					7: pixel_color = 8'b11110000; // Yellow
               default: pixel_color = 8'b00000000; // Default to black
            endcase
			end else if (511 < next_x && next_x < 544 && 287 < next_y && next_y < 320) begin
				case(playerBoard[4][3])
					0: pixel_color = 8'b00011111; // Light blue
               1, 2, 3, 4, 5: pixel_color = 8'b10010010; // Gray
					6: pixel_color = 8'b10110000; // Red
					7: pixel_color = 8'b11110000; // Yellow
               default: pixel_color = 8'b00000000; // Default to black
            endcase
			end else if (543 < next_x && next_x < 576 && 287 < next_y && next_y < 320) begin
				case(playerBoard[4][4])
					0: pixel_color = 8'b00011111; // Light blue
               1, 2, 3, 4, 5: pixel_color = 8'b10010010; // Gray
					6: pixel_color = 8'b10110000; // Red
					7: pixel_color = 8'b11110000; // Yellow
               default: pixel_color = 8'b00000000; // Default to black
            endcase
			end
		end else if ((287 < next_x && next_x < 352) || ((127 < next_x && next_x < 160) && (351 < next_y && next_y < 448)) ||
				((447 < next_x && next_x < 480) && (351 < next_y && next_y < 448)) || ((511 < next_x && next_x < 543) && (351 < next_y && next_y < 448)) ||
				((479 < next_x && next_x < 512) && (415 < next_y  && next_y < 448))) begin
			pixel_color = 8'b00000000; // black
		end else begin
			pixel_color = 8'b11111111; // white
		end
	end
	
endmodule 
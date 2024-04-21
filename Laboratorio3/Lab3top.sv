module Lab3top(
	input logic clk,
	input logic reset,
	input logic confirm,
	input logic [2:0] shipQ,
	input logic [3:0] mov,
	output logic VGA_HS, 
	output logic VGA_VS,
	output logic [7:0] VGA_R,
	output logic [7:0] VGA_G,
	output logic [7:0] VGA_B,
	output logic VGA_SYNC_N,
	output logic VGA_CLK,
	output logic VGA_BLANK_N,
	output logic [2:0] state,
	output logic [2:0] x = 0,
	output logic [2:0] y = 0,
	output logic [13:0] dispCount, dispPships, dispEships
);

	logic clk25MHz;
	logic clk1Hz;
	logic [9:0] next_x, next_y;
	logic [2:0] playerBoard[4:0][4:0];
	logic [2:0] EnvBoard[4:0][4:0];
	logic [1:0] game_state;
	logic [7:0] pixel_color;
	
	clkdiv div(
		.clk(clk),
		.clk_25(clk25MHz),
		.clk_1Hz(clk1Hz)
	);

	vga_driver draw  ( 
		.clock(clk25MHz),        // 25 MHz 
      .reset(reset),      // Active high reset, manipulated by instantiating module
		.color_in(pixel_color), // Pixel color (RRRGGGBB) for pixel being drawn
		.next_x(next_x),        // X-coordinate (range [0, 639]) of next pixel to be drawn
		.next_y(next_y),        // Y-coordinate (range [0, 479]) of next pixel to be drawn
		.hsync(VGA_HS),        
		.vsync(VGA_VS),
	   .red(VGA_R),
		.green(VGA_G),
		.blue(VGA_B),
		.sync(VGA_SYNC_N),
		.clk(VGA_CLK),
		.blank(VGA_BLANK_N)
	);
	
	battleship gameFSM (
    .clk(clk25MHz),
	 .clk1(clk1Hz),
    .rst(reset),
	 .confirm(confirm),
    .shipQ(shipQ),
    .mov(~mov),
	 .state(state),
	 .x(x),
	 .y(y),
    .boardP(playerBoard),
	 .boardE(EnvBoard),
    .game_state(game_state),
	 .dispCount(dispCount),
	 .dispPships(dispPships),
	 .dispEships(dispEships)
  );

  always @(playerBoard or EnvBoard) begin
		integer i, j;
		for (i = 0; i < 5; i = i + 1) begin
        for (j = 0; j < 5; j = j + 1) begin
            
            integer rowE = (i * 32) + 159; 
            integer colE = (j * 32) + 63;
				integer rowP = (i * 32) + 159; 
            integer colP = (j * 32) + 415;
					
            if (next_x > colE && next_x < colE + 33 && next_y > rowE && next_y < rowE + 33) begin
                
                case(EnvBoard[i][j])
                    
                    0: pixel_color = 8'b00011111; // Light blue
                    1, 2, 3, 4, 5: pixel_color = 8'b10010010; // Grey
						  6: pixel_color = 8'b10110000; // Red
						  7: pixel_color = 8'b11110000; // Yellow
                    default: pixel_color = 8'b00000000; // Default to black
                endcase
            end 
				if (next_x >= colP && next_x < colP + 33 && next_y >= rowP && next_y < rowP + 33) begin
                
                case(playerBoard[i][j])
                    
                    0: pixel_color = 8'b00011111; // Light blue
                    1, 2, 3, 4, 5: pixel_color = 8'b10010010; // Grey
						  6: pixel_color = 8'b10110000; // Red
						  7: pixel_color = 8'b11110000; // Yellow
                    default: pixel_color = 8'b00000000; // Default to black
                endcase
            end if ((287 < next_x && next_x < 352) || ((127 < next_x && next_x < 160) && (351 < next_y && next_y < 448)) ||
				((447 < next_x && next_x < 480) && (351 < next_y && next_y < 448)) || ((511 < next_x && next_x < 543) && (351 < next_y && next_y < 448)) ||
				((479 < next_x && next_x < 512) && (415 < next_y  && next_y < 448)) && (i == 0 && j == 0)) begin
					pixel_color = 8'b00000000; // black
				end 
				else if (i == 0 && j == 0) begin
					pixel_color = 8'b11111111; // white
				end
        end
		end
	end
  
endmodule
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

  paintScreen picasso (
		.next_x(next_x), 
		.next_y(next_y),
		.playerBoard(playerBoard),
		.EnvBoard(EnvBoard),
		.pixel_color(pixel_color)
	);
  
endmodule
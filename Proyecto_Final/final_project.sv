module final_project (
   input logic clk, 
	input logic reset, run,
	input logic [3:0] vowels,
	output logic VGA_HS, 
	output logic VGA_VS,
	output logic [7:0] VGA_R,
	output logic [7:0] VGA_G,
	output logic [7:0] VGA_B,
	output logic VGA_SYNC_N,
	output logic VGA_CLK,
	output logic VGA_BLANK_N
);

   logic clk25MHz, pixel;
	logic [9:0] next_x, next_y;
	logic [7:0] pixel_color;
	logic [31:0] Address;
   logic [31:0] data;
	
	always_ff @(posedge clk, posedge reset) begin
        if (reset) begin
            clk25MHz <= 1'b0;
        end else begin
            clk25MHz <= ~clk25MHz;
        end
   end

	/*always_comb begin
        if (pixel) begin
            pixel_color = 8'b00000000; // Blanco
        end else begin
            pixel_color = 8'b11111111; // Negro
        end
    end	 */
	 
	 assign pixel_color = (pixel)? 8'b11111111 : 8'b00000000;
	// assign pixel_color = 8'b11100000;
	 
	/*vgaController vgaCont(VGA_CLK, reset, VGA_HS, VGA_VS, VGA_SYNC_N, VGA_BLANK_N, next_x, next_y);*/

	processorTop proce (
		  .clk(clk25MHz),
		  .rst(reset),
		  .run(run),
		  .vowels(vowels),
        .address(Address),
        .ram_data(data)
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
	
    text_display txt_disp (
		  .run(run),
        .pixel_x(next_x),
        .pixel_y(next_y),
		  .data(data),
        .pixel(pixel),
		  .Address(Address)
    );
	 /*
	 assign VGA_R = {pixel_color[7:5], 5'd0};
	 assign VGA_G = {pixel_color[4:2], 5'd0};
	 assign VGA_B = {pixel_color[1:0], 6'd0};*/

endmodule
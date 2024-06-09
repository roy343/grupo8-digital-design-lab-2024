module vga_driver(
	input wire clock,
	input wire reset,
	input [7:0] color_in,
	output [9:0] next_x,
	output [9:0] next_y,
	output wire hsync, 
	output wire vsync,
	output [7:0] red,
	output [7:0] green,
	output [7:0] blue,
	output sync,
	output clk,
	output blank
);

	parameter [9:0] H_ACTIVE = 10'd639;
	parameter [9:0] H_FRONT = 10'd15;
	parameter [9:0] H_PULSE = 10'd95;
	parameter [9:0] H_BACK = 10'd47;

	parameter [9:0] v_ACTIVE = 10'd479;
	parameter [9:0] v_FRONT = 10'd9;
	parameter [9:0] v_PULSE = 10'd1;
	parameter [9:0] v_BACK = 10'd32;
	
	parameter LOW = 1'b0;
	parameter HIGH = 1'b1;
	
	parameter [7:0] H_ACTIVE_STATE = 8'd0;
	parameter [7:0] H_FRONT_STATE = 8'd1;
	parameter [7:0] H_PULSE_STATE = 8'd2;
	parameter [7:0] H_BACK_STATE = 8'd3;
	
	parameter [7:0] V_ACTIVE_STATE = 8'd0;
	parameter [7:0] V_FRONT_STATE = 8'd1;
	parameter [7:0] V_PULSE_STATE = 8'd2;
	parameter [7:0] V_BACK_STATE = 8'd3;
	
	reg hsync_reg;
	reg vsync_reg;
	reg [7:0] red_reg;
	reg [7:0] green_reg;
	reg [7:0] blue_reg;
	reg line_done;
	
	reg [9:0] h_counter;
	reg [9:0] v_counter;
	
	reg [7:0] h_state;
	reg [7:0] v_state;
	
	always @(posedge clock or posedge reset) begin
		if (reset) begin
			h_counter <= 10'd0;
			v_counter <= 10'd0;
			
			h_state <= H_ACTIVE_STATE;
			v_state <= V_ACTIVE_STATE;
			
			line_done <= LOW;
		end
		else begin
			if (h_state == H_ACTIVE_STATE) begin
				h_counter <= (h_counter == H_ACTIVE)? 10'd0 : (h_counter + 10'd1);
				
				hsync_reg <= HIGH;
				
				line_done <= LOW;
				
				h_state <= (h_counter == H_ACTIVE)? H_FRONT_STATE : H_ACTIVE_STATE;
			end
			if (h_state == H_FRONT_STATE) begin
				h_counter <= (h_counter == H_FRONT)? 10'd0 : (h_counter + 10'd1);
				
				hsync_reg <= HIGH;
				
				h_state <= (h_counter == H_FRONT)? H_PULSE_STATE : H_FRONT_STATE;
			end
			if (h_state == H_PULSE_STATE) begin
				h_counter <= (h_counter == H_PULSE)? 10'd0 : (h_counter + 10'd1);
				
				hsync_reg <= LOW;
				
				h_state <= (h_counter == H_PULSE)? H_BACK_STATE : H_PULSE_STATE;
			end
			if (h_state == H_BACK_STATE) begin
				h_counter <= (h_counter == H_BACK)? 10'd0 : (h_counter + 10'd1);
				
				hsync_reg <= HIGH;
				
				h_state <= (h_counter == H_BACK)? H_ACTIVE_STATE : H_BACK_STATE;
				
				line_done <= (h_counter == (H_BACK - 1))? HIGH : LOW;
			end
			if (v_state == V_ACTIVE_STATE) begin
				v_counter <= (line_done == HIGH)? ((v_counter == v_ACTIVE)? 10'd0 : (v_counter + 10'd1)) : v_counter;
				
				vsync_reg <= HIGH;
				
				v_state <= (line_done == HIGH)? ((v_counter == v_ACTIVE)? V_FRONT_STATE : V_ACTIVE_STATE) : V_ACTIVE_STATE;
			end
			if (v_state == V_FRONT_STATE) begin
				v_counter <= (line_done == HIGH)? ((v_counter == v_FRONT)? 10'd0 : (v_counter + 10'd1)) : v_counter;
				
				vsync_reg <= HIGH;
				
				v_state <= (line_done == HIGH)? ((v_counter == v_FRONT)? V_PULSE_STATE : V_FRONT_STATE) : V_FRONT_STATE;
			end
			if (v_state == V_PULSE_STATE) begin
				v_counter <= (line_done == HIGH)? ((v_counter == v_PULSE)? 10'd0 : (v_counter + 10'd1)) : v_counter;
				
				vsync_reg <= LOW;
				
				v_state <= (line_done == HIGH)? ((v_counter == v_PULSE)? V_BACK_STATE : V_PULSE_STATE) : V_PULSE_STATE;
			end
			if (v_state == V_BACK_STATE) begin
				v_counter <= (line_done == HIGH)? ((v_counter == v_BACK)? 10'd0 : (v_counter + 10'd1)) : v_counter;
				
				vsync_reg <= HIGH;
				
				v_state <= (line_done == HIGH)? ((v_counter == v_BACK)? V_ACTIVE_STATE : V_BACK_STATE) : V_BACK_STATE;
			end
			
			red_reg <= (h_state == H_ACTIVE_STATE)? ((v_state == V_ACTIVE_STATE)? {color_in[7:5], 5'd0} : 8'd0) : 8'd0;
			green_reg <= (h_state == H_ACTIVE_STATE)? ((v_state == V_ACTIVE_STATE)? {color_in[4:2], 5'd0} : 8'd0) : 8'd0;
			blue_reg <= (h_state == H_ACTIVE_STATE)? ((v_state == V_ACTIVE_STATE)? {color_in[1:0], 6'd0} : 8'd0) : 8'd0;
		end
	end
	
	assign hsync = hsync_reg;
	assign vsync = vsync_reg;
	assign red = red_reg;
	assign green = green_reg;
	assign blue = blue_reg;
	assign clk = clock;
	assign sync = 1'b_0;
	assign blank = hsync_reg & vsync_reg;
	
	assign next_x = (h_state == H_ACTIVE_STATE)? h_counter : 10'd0;
	assign next_y = (v_state == V_ACTIVE_STATE)? v_counter : 10'd0;
	
	
endmodule
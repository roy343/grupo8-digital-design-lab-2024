module text_display (
    input logic [9:0] pixel_x, pixel_y,
	 input logic [31:0] data,
    output logic pixel,
	 output logic [31:0] Address
);

    logic [7:0] ch;
    logic [2:0] xoff, yoff;
    logic [9:0] char_x, char_y;
	 logic charpixelv;

    chargenrom char_rom (
        .ch(ch),
        .xoff(xoff),
        .yoff(yoff),
        .pixel(charpixelv)
    );

    localparam CHAR_WIDTH = 8;
    localparam CHAR_HEIGHT = 8;
    localparam CHARS_PER_LINE = 80;

    assign char_x = pixel_x / CHAR_WIDTH;
    assign char_y = pixel_y / CHAR_HEIGHT;

    always_comb begin
        Address = (char_y * CHARS_PER_LINE + char_x) / 4;
    end

	 
    always_comb begin
        case (char_x[1:0])
            2'b11: ch = data[31:24];
            2'b10: ch = data[23:16];
            2'b01: ch = data[15:8];
            2'b00: ch = data[7:0];
        endcase
    end
	 
	 
	 always_comb begin
		 if (ch == 8'h00) begin
			  pixel = 1'b0;
		 end else begin
			  pixel = charpixelv;
		 end
	end
	/*
	always_comb begin
        if (run) begin
            if (Address < 16 || Address >= 31) begin
                pixel = 1'b0;
            end else if (ch == 8'h00) begin
                pixel = 1'b0;
            end else begin
                pixel = charpixelv;
            end
        end else begin
            if (Address >= 15 || ch == 8'h00) begin
                pixel = 1'b0;
            end else begin
                pixel = charpixelv;
            end
        end
    end*/

    assign xoff = pixel_x % CHAR_WIDTH;
    assign yoff = pixel_y % CHAR_HEIGHT;

endmodule
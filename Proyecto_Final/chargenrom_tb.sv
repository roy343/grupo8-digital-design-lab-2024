module chargenrom_tb;

    logic [7:0] ch;
    logic [2:0] xoff, yoff;
    logic pixel;

    chargenrom dut (
        .ch(ch),
        .xoff(xoff),
        .yoff(yoff),
        .pixel(pixel)
    );

    initial begin
        
        ch = 65; 
        xoff = 0;
        yoff = 0;

        
        #10;
    end

endmodule
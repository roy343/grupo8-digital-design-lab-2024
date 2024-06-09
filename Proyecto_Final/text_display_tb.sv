module text_display_tb;

    // Inputs
    logic [9:0] pixel_x;
    logic [9:0] pixel_y;

    // Outputs
    logic pixel;

    // Instantiate the Unit Under Test (UUT)
    text_display uut (
        .pixel_x(pixel_x),
        .pixel_y(pixel_y),
        .pixel(pixel)
    );


    // Test stimulus
    initial begin
        // Initialize Inputs
        pixel_x = 0;
        pixel_y = 0;

        // Wait for global reset
        #10;

        // Test different pixel positions
        pixel_x = 2;
        pixel_y = 0;
        #10;
        
        pixel_x = 5;
        pixel_y = 0;
        #10;
        
        pixel_x = 7;
        pixel_y = 0;
        #10;
        
        pixel_x = 0;
        pixel_y = 1;
        #10;
        
        pixel_x = 0;
        pixel_y = 3;
        #10;

        // Add more test cases as needed
        pixel_x = 8;
        pixel_y = 0;
        #10;
        
        pixel_x = 79;
        pixel_y = 79;
        #10;

        $finish;
    end


endmodule
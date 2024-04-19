module mov_control_tb();

    logic [2:0] x, y;
    logic [3:0] mov;
    logic [2:0] outX, outY;

    mov_control dut(
        .x(x),
        .y(y),
        .mov(mov),
        .outX(outX),
        .outY(outY)
    );

    initial begin
        $display("Initial state:");
        $display("x = %0d, y = %0d, mov = %b", x, y, mov);
        $display("outX = %0d, outY = %0d", outX, outY);
        
        // Test left movement
        x = 2;
        y = 3;
        mov = 4'b1000;

        #5;
        $display("\nAfter moving left:");
        $display("x = %0d, y = %0d, mov = %b", x, y, mov);
        $display("outX = %0d, outY = %0d", outX, outY);
        
        // Test up movement
        x = 1;
        y = 2;
        mov = 4'b0100;
        #5;
        $display("\nAfter moving up:");
        $display("x = %0d, y = %0d, mov = %b", x, y, mov);
        $display("outX = %0d, outY = %0d", outX, outY);
        
        // Test down movement
        x = 3;
        y = 4;
        mov = 4'b0010;
        #5;
        $display("\nAfter moving down:");
        $display("x = %0d, y = %0d, mov = %b", x, y, mov);
        $display("outX = %0d, outY = %0d", outX, outY);
        
        // Test right movement
        x = 0;
        y = 1;
        mov = 4'b0001;
        #5;
        $display("\nAfter moving right:");
        $display("x = %0d, y = %0d, mov = %b", x, y, mov);
        $display("outX = %0d, outY = %0d", outX, outY);
        
        // Test default case
        x = 4;
        y = 0;
        mov = 4'b1010;
        #5;
        $display("\nAfter invalid mov value:");
        $display("x = %0d, y = %0d, mov = %b", x, y, mov);
        $display("outX = %0d, outY = %0d", outX, outY);
        
        $finish;
    end

endmodule
module Playerplay_tb();

	 logic clk, enable, confirm;
    logic [2:0] x, y;
    logic [2:0] board_in[4:0][4:0] = '{
            '{0, 0, 0, 0, 0},
            '{0, 0, 0, 0, 0},
            '{0, 0, 0, 0, 0},
            '{3, 3, 3, 2, 2},
				'{0, 0, 0, 0, 1}
        };

   
    logic [2:0] board_out[4:0][4:0];
    logic done;

    Playerplay dut (
        .x(x),
        .y(y),
		  .clk(clk),
        .enable(enable),
        .confirm(confirm),
        .board_in(board_in),
        .board_out(board_out),
        .done(done)
    );


    always begin
        #5 clk = ~clk;
    end

    initial begin
        clk = 0;
        x = 0;
        y = 0;
        enable = 1;
        confirm = 0;

        #10;
		  
        confirm = 1;
        #10;
        confirm = 0;

		  #10;
        x = 0;
        y = 1;
        confirm = 1;
        #10;
        confirm = 0;

		  #10;
		  enable = 0;
		  x = 4;
        y = 4;
        confirm = 1;
        #10;
        confirm = 0;

		  #10;
		  $stop;
	end
endmodule
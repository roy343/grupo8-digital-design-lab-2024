module Envplay_tb();

	 logic clk, enable;
    logic [2:0] board_in[4:0][4:0] = '{
            '{0, 0, 0, 0, 0},
            '{0, 0, 0, 0, 0},
            '{0, 0, 0, 0, 0},
            '{3, 3, 3, 2, 2},
				'{0, 0, 0, 0, 1}
        };

   
    logic [2:0] board_out[4:0][4:0];
    logic done;

    Envplay dut (
		  .clk(clk),
        .enable(enable),
        .board_in(board_in),
        .board_out(board_out),
        .done(done)
    );


    always begin
        #5 clk = ~clk;
    end

    initial begin
        clk = 0;

        enable = 0;

		  #30;
		  enable = 1;

        #10;
        enable = 0;

		  #50;
		  enable = 1;

        #10;
        enable = 0;
		  #10;
		  $stop;
	end
endmodule
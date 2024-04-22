module Epos_ships_tb();

	logic clk, enable;
    logic [2:0] shipQ;
    logic [2:0] board_in[4:0][4:0] = '{
            '{0, 0, 0, 0, 0},
            '{0, 0, 0, 0, 0},
            '{0, 0, 0, 0, 0},
            '{0, 0, 0, 0, 0},
				'{0, 0, 0, 0, 0}
        };

   
    logic [2:0] board_out[4:0][4:0];
    logic placed;
	 
	 Epos_ships dut (
		  .clk(clk),
        .enable(enable),
        .shipQ(shipQ),
        .board_in(board_in),
        .board_out(board_out),
        .placed(placed)
    );
	 
	 always begin
        #5 clk = ~clk;
    end
	 
	 initial begin
        clk = 0;
        enable = 1;
        shipQ = 5;

        #1500;

		  $stop;
	end

endmodule
module battleship_tb();
  logic clk, clk1;
  logic rst;
  logic confirm;
  logic [2:0] shipQ;
  logic [3:0] mov;
  logic [2:0] x = 0;
  logic [2:0] y = 0; 
  logic [2:0] boardP[4:0][4:0];
  logic [2:0] boardE[4:0][4:0];
  logic [13:0] dispCount, dispPships, dispEships;
  logic [1:0] game_state;

  battleship dut (
    .clk(clk),
	 .clk1(clk),
    .rst(rst),
	 .confirm(confirm),
    .shipQ(shipQ),
    .mov(mov),
	 .x(x),
	 .y(y),
    .boardP(boardP),
	 .boardE(boardE),
    .game_state(game_state),
	 .dispCount(dispCount),
	 .dispPships(dispPships),
	 .dispEships(dispEships)
  );

 
  always begin
    #5 clk = ~clk;
  end


  task display_board;
    input logic [2:0] board[4:0][4:0];
    begin
      for (int i = 0; i < 5; i++) begin
        for (int j = 0; j < 5; j++) begin
          $write("%4d \t", board[i][j]);
        end
        $display("\n");
      end
      $display("\n");
    end
  endtask

  initial begin
    // Initialize signals
    clk = 0;
    rst = 1;
	 confirm = 0;

    // Test process
    #10;
    rst = 0;
    #10;
    $display("------PC Board---------");
    display_board(boardE);
	 $display("----Player Board-------");
	 display_board(boardP);
	 

    #10;
    shipQ = 2; 
    #10;
	 
    mov = 4'b0001;
	 #5;
	 mov = 4'b0100;
	 confirm = 1;
	 #5;
	 confirm = 0;
	 
	 mov = 4'b0100;
	 #5;
	 mov = 4'b1000;
	 #5;
	 mov = 4'b0001;
	 #5;
	 mov = 4'b0100;
	 confirm = 1;
	 #5;
	 confirm = 0;
	 
	 
    #10;
	 $display("Boards after placing boats:");
    $display("------PC Board---------");
    display_board(boardE);
	 $display("----Player Board-------");
	 display_board(boardP);

    #50;

    mov = 4'b0100; 
    #5;
    mov = 4'b0001;
    #5;
	 mov = 4'b0100; 
    #5;
	 confirm = 1;
	 #10;
	 confirm = 0;
	 #10;
    $display("Board after player attack:");
    $display("------PC Board---------");
    display_board(boardE);
	 $display("----Player Board-------");
	 display_board(boardP);

    #20;
    $display("Board after PC attack:");
    $display("------PC Board---------");
    display_board(boardE);
	 $display("----Player Board-------");
	 display_board(boardP);
	 
	 #200;
    // Finish simulation
    $finish;
  end

endmodule
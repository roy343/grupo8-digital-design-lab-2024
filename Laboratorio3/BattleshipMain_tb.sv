module BattleshipMain_tb;

    // Inputs
    logic clk, reset, confirm;
    logic [2:0] shipQ;
    logic [3:0] mov;

    // Outputs
    logic hSync, vSync, syncBlank, bSync;
    logic [7:0] red, green, blue;
    logic clk25;
    logic [2:0] state;
    logic [2:0] x, y;
    logic [13:0] dispCount, dispPships, dispEships;

    // Instantiate the module under test
    BattleshipMain dut (
        .clk(clk),
        .reset(reset),
        .confirm(confirm),
        .shipQ(shipQ),
        .mov(mov),
        .hSync(hSync),
        .vSync(vSync),
        .syncBlank(syncBlank),
        .bSync(bSync),
        .red(red),
        .green(green),
        .blue(blue),
        .clk25(clk25),
        .state(state),
        .x(x),
        .y(y),
        .dispCount(dispCount),
        .dispPships(dispPships),
        .dispEships(dispEships)
    );

    // Clock generation
    always #5 clk = ~clk;

    // Initial values
    initial begin
        clk = 0;
        reset = 0;
        confirm = 0;
        shipQ = 0;
        mov = 0;
        #100;
        reset = 1;
        #100;
        reset = 0;

        #1000;
        $finish;
    end

    // Add stimulus generation and checking here

endmodule
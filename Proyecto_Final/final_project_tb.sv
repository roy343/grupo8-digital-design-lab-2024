module final_project_tb;

    // Inputs
    logic clk;
    logic reset;
	 logic run;
	 logic [3:0] vowels;

    // Outputs
    logic VGA_HS;
    logic VGA_VS;
    logic [7:0] VGA_R;
    logic [7:0] VGA_G;
    logic [7:0] VGA_B;
    logic VGA_SYNC_N;
    logic VGA_CLK;
    logic VGA_BLANK_N;

    // Instantiate the Unit Under Test (UUT)
    final_project uut (
        .clk(clk),
        .reset(reset),
		  .run(run),
		  .vowels(vowels),
        .VGA_HS(VGA_HS),
        .VGA_VS(VGA_VS),
        .VGA_R(VGA_R),
        .VGA_G(VGA_G),
        .VGA_B(VGA_B),
        .VGA_SYNC_N(VGA_SYNC_N),
        .VGA_CLK(VGA_CLK),
        .VGA_BLANK_N(VGA_BLANK_N)
    );

	 always begin
        #5 clk = ~clk; 
    end
	 
    // Simulate clock and reset
    initial begin
        clk = 0;
        reset = 1;
        #10 reset = 0;

        // Simulate some clock cycles

        // Finish simulation
        $finish;
    end


endmodule

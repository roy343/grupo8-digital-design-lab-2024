module VGA(input clock,
			  imput reset
			  output logic [2:0] red,
			  output logic [2:0] green,
			  output logic [2:0] blue,
			  output logic hsync,
			  output logic vsync
			  );
			  

			  
logic [10:0] hCount;
logic [10:0] vCount;
logic [1:0]  counter;
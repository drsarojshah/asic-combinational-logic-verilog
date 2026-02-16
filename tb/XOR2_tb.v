/*
    --------------------------------------------------
	Problem  # "Testbench for two input XOR Gate"		  
    Author   # Saroj Shah
    Date     # 02-14-2026
    Reference# Prof. Potluri and others
	--------------------------------------------------
*/

`timescale 1ns/1ps

module XOR2_tb;

	reg in_A;
	reg in_B;
	wire out_Y;	
	
	
	// Instantiate
	XOR2 XOR_gate(in_A, in_B, out_Y);

	initial 
	begin
		// Initializing inputs
		in_A = 0;
		in_B = 0;
		
		#5 in_A = 1; in_B = 0;
		
		#5 in_A = 0; in_B = 1;
		
		#5 in_A = 1; in_B = 1;
		
		#5 $finish;   // End simulation
	end

	initial
		$monitor("Time=%0t | in_A = %b, in_B = %b, out_Y = %b\n", $time, in_A, in_B, out_Y);

endmodule
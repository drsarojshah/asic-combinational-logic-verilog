/*
	--------------------------------------------------
	Problem  # Testbench for 4-bit Unsigned Multiplier using Full Adders
	Author   # Saroj Shah
	Date   	 # 02-15-2026
	Reference# Prof. Potluri and others
	--------------------------------------------------
*/
`timescale 1ns/1ps

module MULT4_tb;

    reg  [3:0] in_A;
    reg  [3:0] in_B;
    wire [7:0] out_P;

    MULT4 mult_1(in_A, in_B, out_P);

    initial 
	
	begin		
		in_A = 0; in_B = 0; 
		#10 in_A = 4'b0011; in_B = 4'b0010;   // 3 * 2 = 6
		#10 in_A = 4'b0101; in_B = 4'b0011;   // 5 * 3 = 15
		#10 in_A = 4'b0111; in_B = 4'b0100;   // 7 * 4 = 28
		#10 in_A = 4'b1001; in_B = 4'b1001;   // 9 * 9 = 81
		#10 in_A = 4'b1111; in_B = 4'b1111;   // 15 * 15 = 225
        #10 $finish;
    end

    initial
        $monitor("\nTime=%0t | A=%0d B=%0d | Product=%0d (%b)\n",
                  $time, in_A, in_B, out_P, out_P);

endmodule

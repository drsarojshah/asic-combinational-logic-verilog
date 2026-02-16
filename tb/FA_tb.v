/*
	--------------------------------------------------
	Problem  # Testbench for 1-Bit Full Adder
	Author   # Saroj Shah
	Date     # 02-14-2026
	Reference# Prof. Potluri and others
	--------------------------------------------------
*/

`timescale 1ns/1ps

module FA_tb;

    reg in_A, in_B, in_Cin;
    wire out_Sum, out_Cout;

    // Instantiate
    FA FA_1(in_A, in_B, in_Cin, out_Sum, out_Cout);

    initial
    begin
        // All combinations
		in_A=0; in_B=0; in_Cin=0;		
        #5 in_A=0; in_B=0; in_Cin=1;		
        
        #5 in_A=0; in_B=1; in_Cin=0;
        #5 in_A=0; in_B=1; in_Cin=1;
		
        #5 in_A=1; in_B=0; in_Cin=0;
        #5 in_A=1; in_B=0; in_Cin=1;
		
        #5 in_A=1; in_B=1; in_Cin=0;
        #5 in_A=1; in_B=1; in_Cin=1;

        #5 $finish;
    end

    initial
        $monitor("\nTime=%0t | A=%b B=%b Cin=%b | Sum=%b Cout=%b",
                  $time, in_A, in_B, in_Cin, out_Sum, out_Cout);

endmodule

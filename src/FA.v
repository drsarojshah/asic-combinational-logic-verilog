/*
	--------------------------------------------------
    Problem  # "Modeling 1-Bit Full Adder"
				Sum = (A XOR B) XOR Cin
				Cout= A.B + (A XOR B).Cin    
    Author   # Saroj Shah
    Date     # 02-14-2026
    Reference# Prof. Potluri and others
	--------------------------------------------------
*/
`timescale 1ns/1ps

module FA(in_A, in_B, in_Cin, out_Sum, out_Cout);
	
	input in_A, in_B, in_Cin;
	output out_Sum, out_Cout;
	
	// Internal wires
    wire w3;
    wire w4, w5;
	
	// XOR - Sum
	XOR2 xor_a(in_A, in_B, w3);
	XOR2 xor_b(w3, in_Cin, out_Sum);
	
	// AND gate
	and AND_3(w4, in_A, in_B);
	and AND_4(w5, w3, in_Cin);
	
	//OR gate => Carry out
	or OR_2(out_Cout, w4, w5);
	
endmodule
	
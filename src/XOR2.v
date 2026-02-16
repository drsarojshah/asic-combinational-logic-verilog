/*
    --------------------------------------------------
	Problem  # "Modeling two input XOR Gate at Gate level"
				Y = A'B + AB'    
    Author   # Saroj Shah
    Date     # 02-14-2026
    Reference# Prof. Potluri and others
	--------------------------------------------------
*/
`timescale 1ns/1ps

module XOR2(in_A, in_B, out_Y);

	input in_A, in_B;
	output out_Y;
	
	// Internal wires
    wire A_not, B_not;	
    wire w1, w2;
	
	// NOT gate
	not Not_A(A_not, in_A);
	not Not_B(B_not, in_B);
	
	// AND Gate
	and AND_1(w1, in_A, B_not);
	and AND_2(w2, in_B, A_not);
	
	// OR Gate
	or OR_1(out_Y, w1, w2);		
		
endmodule
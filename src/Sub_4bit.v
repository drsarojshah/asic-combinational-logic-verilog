/*
    --------------------------------------------------
	Problem  # "Modeling 4-Bit subtractor using FA"
				Sum= (A XOR B) XOR Bin
				Bout= A'.B + (A XOR B)'.Bin    
    Author   # Saroj Shah
    Date     # 02-15-2026
    Reference# Prof. Potluri and others
	--------------------------------------------------
*/
`timescale 1ns/1ps

module Sub_4bit(in_A, in_B, in_Bin, out_D, out_Bout);
	input  [3:0] in_A;
    input  [3:0] in_B;
    input        in_Bin;
	
	output [3:0] out_D;
    output       out_Bout;
	
	// Internal wires
    wire [3:0] B_xor;
    wire c1, c2, c3, c4;

	// XOR stage
    XOR2 x0(in_B[0], in_Bin, B_xor[0]);
    XOR2 x1(in_B[1], in_Bin, B_xor[1]);
    XOR2 x2(in_B[2], in_Bin, B_xor[2]);
    XOR2 x3(in_B[3], in_Bin, B_xor[3]);
	
	// Ripple-carry Full Adders
    FA FA0(in_A[0], B_xor[0], in_Bin, out_D[0], c1);
    FA FA1(in_A[1], B_xor[1], c1,   out_D[1], c2);
    FA FA2(in_A[2], B_xor[2], c2,   out_D[2], c3);
    FA FA3(in_A[3], B_xor[3], c3,   out_D[3], c4);
	
	// Borrow output
    not n1(out_Bout, c4);

endmodule
/*
	--------------------------------------------------
	Problem  # 4-bit Unsigned Multiplier using Full Adders
	Author   # Saroj Shah
	Date   	 # 02-15-2026
	Reference# Prof. Potluri and others
	--------------------------------------------------
*/
`timescale 1ns/1ps

module MULT4(in_A, in_B, out_P);
    input  [3:0] in_A;
    input  [3:0] in_B;
    output [7:0] out_P;
   
    // Internal Wires 
    wire c1_1;
    wire s2_1, c2_1, c2_2;
    wire s3_1, s3_2;
    wire c3_1, c3_2, c3_3;
    wire s4_1, s4_2;
    wire c4_1, c4_2, c4_3;
    wire s5_1;
    wire c5_1, c5_2;    
	
	// Partial Products
    wire p00,p01,p02,p03;
    wire p10,p11,p12,p13;
    wire p20,p21,p22,p23;
    wire p30,p31,p32,p33;

    and (p00, in_A[0], in_B[0]);
    and (p01, in_A[1], in_B[0]);
    and (p02, in_A[2], in_B[0]);
    and (p03, in_A[3], in_B[0]);

    and (p10, in_A[0], in_B[1]);
    and (p11, in_A[1], in_B[1]);
    and (p12, in_A[2], in_B[1]);
    and (p13, in_A[3], in_B[1]);

    and (p20, in_A[0], in_B[2]);
    and (p21, in_A[1], in_B[2]);
    and (p22, in_A[2], in_B[2]);
    and (p23, in_A[3], in_B[2]);

    and (p30, in_A[0], in_B[3]);
    and (p31, in_A[1], in_B[3]);
    and (p32, in_A[2], in_B[3]);
    and (p33, in_A[3], in_B[3]);   
   
    // Output bit 0 
    assign out_P[0] = p00;   
    
	// Column 1
    FA FA1(p01, p10, 1'b0, out_P[1], c1_1);
   
    // Column 2
    FA FA2(p02, p11, c1_1, s2_1, c2_1);
    FA FA3(s2_1, p20, 1'b0, out_P[2], c2_2);
    
    // Column 3   
    FA FA4(p03, p12, c2_1, s3_1, c3_1);
    FA FA5(s3_1, p21, c2_2, s3_2, c3_2);
    FA FA6(s3_2, p30, 1'b0, out_P[3], c3_3);
    
    // Column 4
    FA FA7(p13, p22, c3_1, s4_1, c4_1);
    FA FA8(s4_1, p31, c3_2, s4_2, c4_2);
    FA FA9(s4_2, c3_3, 1'b0, out_P[4], c4_3);
	
    // Column 5
    FA FA10(p23, p32, c4_1, s5_1, c5_1);
    FA FA11(s5_1, c4_2, c4_3, out_P[5], c5_2);
    
    // Column 6
    FA FA12(p33, c5_1, c5_2, out_P[6], out_P[7]);

endmodule

/*
    --------------------------------------------------
	Problem   # "Testbench for 4-Bit subtractor"				    
    Author    # Saroj Shah
    Date      # 02-15-2026
    Reference # Prof. Potluri and others
	--------------------------------------------------
*/

`timescale 1ns/1ps

module Sub_4bit_tb;

    reg  [3:0] in_A;
    reg  [3:0] in_B;
    reg        in_Bin;

    wire [3:0] out_D;
    wire       out_Bout;

    // Instantiating
    Sub_4bit sub1(in_A, in_B, in_Bin, out_D, out_Bout);

    initial begin

        /*
        // When in_Bin = 0, it will do ADDITION        
        in_Bin = 0;
        
		#10 in_A = 4'b0101;  in_B = 4'b0011;   // 5 + 3 = 8
		#10 in_A = 4'b1001;  in_B = 4'b0110;   // 9 + 6 = 15
		#10 in_A = 4'b0111;  in_B = 4'b1000;   // 7 + 8 = 15
        */
		
        // When in_Bin = 0, it will do SUBTRACTION        
        in_Bin = 1;
		
		#10 in_A = 4'b1001;  in_B = 4'b0011;   // 9 - 3 = 6
		#10 in_A = 4'b0101;  in_B = 4'b0111;   // 5 - 7 = -2 (Borrow=1)
		#10 in_A = 4'b1000;  in_B = 4'b1000;   // 8 - 8 = 0
		#10 in_A = 4'b0000;  in_B = 4'b0001;   // 0 - 1 = -1 (Borrow=1)
        #10 $finish;
    end

    initial begin
        $monitor("\nTime=%0t | Mode=%b | A=%0d(%b) B=%0d(%b) | Result=%0d(%b) Borrow=%b",
                 $time, in_Bin, in_A, in_A, in_B, in_B, out_D, out_D, out_Bout);
    end

endmodule
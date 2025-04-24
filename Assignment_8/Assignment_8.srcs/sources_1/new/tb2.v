`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/31/2025 09:13:17 AM
// Design Name: 
// Module Name: tb2
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

`timescale 1ns / 1ps

module tb_pattern_detector();
    reg clk;
    reg pattern_val;
    reg A, B, C;
    wire Z;
    
    // Instantiate DUT
    Ques_2_overlapping_patter_detecotr dut(
        .clk(clk),
        .patter_vals(pattern_val),
        .A(A),
        .B(B),
        .C(C),
        .Z(Z)
    );
    
    // Clock generation
    always #5 clk = ~clk;
    
    // Test stimulus
    initial begin
        // Initialize inputs
        clk = 0;
        pattern_val = 0;
        A = 1;  // Map A output to value 1
        B = 2;  // Map B output to value 2
        C = 0;  // Map C output to value 0
        
        // Test sequence: 1 0 1 1 0 1 1 1 0
        // Expected output: C C A B C A B B B
        // Timestamp:      0 5 10 15 20 25 30 35 40
        
        // Initial state
        #7;
        
        // Cycle 1: Input = 1
        pattern_val = 1;
        #10 $display("Time=%0t: Input=1, Output=%0d", $time, Z);
        
        // Cycle 2: Input = 0
        pattern_val = 0;
        #10 $display("Time=%0t: Input=0, Output=%0d", $time, Z);
        
        // Cycle 3: Input = 1 (detect 101)
        pattern_val = 1;
        #10 $display("Time=%0t: Input=1, Output=%0d (EXPECT A=1)", $time, Z);
        
        // Cycle 4: Input = 1 
        pattern_val = 1;
        #10 $display("Time=%0t: Input=1, Output=%0d", $time, Z);
        
        // Cycle 5: Input = 0 (detect 110)
        pattern_val = 0;
        #10 $display("Time=%0t: Input=0, Output=%0d (EXPECT B=2)", $time, Z);
        
        // Cycle 6: Input = 1
        pattern_val = 1;
        #10 $display("Time=%0t: Input=1, Output=%0d", $time, Z);
        
        // Cycle 7: Input = 1 
        pattern_val = 1;
        #10 $display("Time=%0t: Input=1, Output=%0d", $time, Z);
        
        // Cycle 8: Input = 1 
        pattern_val = 1;
        #10 $display("Time=%0t: Input=1, Output=%0d", $time, Z);
        
        // Cycle 9: Input = 0 (detect 110 again)
        pattern_val = 0;
        #10 $display("Time=%0t: Input=0, Output=%0d (EXPECT B=2)", $time, Z);
        
        $finish;
    end
endmodule

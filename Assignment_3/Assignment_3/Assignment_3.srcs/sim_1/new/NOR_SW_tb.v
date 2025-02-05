`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/05/2025 02:06:44 PM
// Design Name: 
// Module Name: NOR_SW_tb
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


module NOR_SW_tb();

    reg in1, in2;
    wire out;
    reg success; // Flag to track correctness

    NOR_SM dut(out,in1, in2);

    initial begin
        success = 1; // Assume success initially
        
        in1 = 0; in2 = 0; #10;
        if (out !== 1) success = 0;

        in1 = 0; in2 = 1; #10;
        if (out !== 0) success = 0;

        in1 = 1; in2 = 0; #10;
        if (out !== 0) success = 0;

        in1 = 1; in2 = 1; #10;
        if (out !== 0) success = 0;

        if (success) 
            $display("Success: NOR gate functionality verified!");
        else 
            $display("Failure: NOR gate did not meet expected behavior.");
        
        $finish;
    end

endmodule


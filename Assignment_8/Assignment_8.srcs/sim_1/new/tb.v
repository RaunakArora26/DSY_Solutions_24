`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/29/2025 10:21:44 AM
// Design Name: 
// Module Name: tb
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


module tb();
reg clk = 0;
reg in = 0;
wire detect;

Pattern_detector dut(clk,in,detect);

always #5 clk = ~clk;

initial begin
    in = 0;
    #10;
    in = 0;
    #10;
    in = 1;
    #10;
    in = 0;
    #10;
    in = 0;
    #10;
    in = 0;
    #10;
    in = 1;
    #10;
    in = 0;
    #10;
    $finish;
end 

endmodule

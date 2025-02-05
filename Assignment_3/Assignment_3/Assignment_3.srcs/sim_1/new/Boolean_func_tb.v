`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/05/2025 02:55:15 PM
// Design Name: 
// Module Name: Boolean_func_tb
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


module Boolean_func_tb();

reg a,b,c;
wire y;
integer i;

boolean_function dut(a,b,c,y);

initial begin
    for(i = 0;i<8;i=i+1)
    begin
        {a,b,c} = i;
        #10;
    end
    $finish;
end
endmodule

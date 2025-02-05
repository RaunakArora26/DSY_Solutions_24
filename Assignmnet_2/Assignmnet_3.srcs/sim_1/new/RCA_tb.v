`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/30/2025 06:53:13 AM
// Design Name: 
// Module Name: RCA_tb
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


module RCA_tb();
reg [3:0] a,b;
reg Cin;
wire Cout;
wire [3:0] Sum;
integer i;

Ripple_Carry_Adder dut(a,b,Cin,Cout,Sum);

initial begin
    for(i=0;i<512;i=i+1)
    begin
        {Cin,b,a} = i;#10; 
    end
    $finish;
    

end



endmodule

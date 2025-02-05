`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/29/2025 07:19:51 PM
// Design Name: 
// Module Name: Multipler_tb
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


module Multipler_tb();
    
    reg A0,A1,B0,B1;
    wire P3,P2,P1,P0;
    integer i;
    Multiplier_twoBits u_Multiplier_twoBits (
    .A1 ( A1 ),
    .A0 ( A0 ),
    .B1 ( B1 ),
    .B0 ( B0 ),
    .P3 ( P3 ),
    .P2 ( P2 ),
    .P1 ( P1 ),
    .P0  ( P0  )
);

initial begin
    for(i=0;i<16;i=i+1)
    begin
        {A1,A0,B1,B0} = i;
        #10;    
    end
    $finish;
end




endmodule

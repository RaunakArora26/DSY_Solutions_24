`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/18/2025 06:54:27 AM
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
reg a,b,c,d;
wire y,z;
integer i;

shannon_decom dut(a,b,c,d,y,z);

initial begin
    for(i = 0;i<16;i=i+1)
    begin
        {a,b,c,d} = i;
        #10;
    end

end
endmodule

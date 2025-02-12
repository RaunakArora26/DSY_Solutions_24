`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/12/2025 03:01:07 PM
// Design Name: 
// Module Name: mux_tb
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


module mux_tb();
reg [7:0] Input;
reg [2:0] sel;
wire Output;
integer i;

Eight_x_one_mux dut(Input,sel,Output);

initial begin
    for(i=0;i<2048;i=i+1)
    begin
        {Input,sel} = i;
        #10;    
    end
    

end
endmodule

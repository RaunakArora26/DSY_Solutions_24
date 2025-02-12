`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/12/2025 03:15:46 PM
// Design Name: 
// Module Name: decoder_tb
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


module decoder_tb();
reg [2:0] inp;
wire [7:0] out;
integer i;
//Three_to_eight_decoder_behavirol dut(inp,out);
Three_to_eight_decoder_dataflow dut(inp,out);

initial begin
    for(i = 0;i<8;i=i+1)
    begin
        inp = i;
        #10;
    end
    

end
endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/12/2025 03:11:58 PM
// Design Name: 
// Module Name: Three_to_eight_decoder_dataflow
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


module Three_to_eight_decoder_dataflow(
    input [2:0] inp,
    output [7:0] out
    );
    
    assign out[0] = ~inp[2] & ~inp[1] & ~inp[0];
    assign out[1] = ~inp[2] & ~inp[1] &  inp[0];
    assign out[2] = ~inp[2] &  inp[1] & ~inp[0];
    assign out[3] = ~inp[2] &  inp[1] &  inp[0];
    assign out[4] =  inp[2] & ~inp[1] & ~inp[0];
    assign out[5] =  inp[2] & ~inp[1] &  inp[0];
    assign out[6] =  inp[2] &  inp[1] & ~inp[0];
    assign out[7] =  inp[2] &  inp[1] &  inp[0];
endmodule

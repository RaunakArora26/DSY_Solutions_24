`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/18/2025 06:50:24 AM
// Design Name: 
// Module Name: shannon_decom
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


module shannon_decom(
    input a,
    input b,
    input c,
    input d,
    output y,
    output z //just to verify
    );
    wire w1,w2;
    
//    mux mux1(0,b,d,w1);
//    mux mux2(w1,1,c,w2);
//    mux mux3(0,w2,a,y);
    
    assign z = a & ( c | (b&d));
endmodule

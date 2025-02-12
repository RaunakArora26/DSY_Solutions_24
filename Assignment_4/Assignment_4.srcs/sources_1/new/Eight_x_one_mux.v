`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/12/2025 02:55:02 PM
// Design Name: 
// Module Name: Eight_x_one_mux
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


module Eight_x_one_mux(
    input [7:0] Input,
    input [2:0] sel,
    output reg Output
    );
    
    always@(*)
    begin
        case(sel)
            3'b000: Output = Input[0];
            3'b001: Output = Input[1];
            3'b010: Output = Input[2];
            3'b011: Output = Input[3];
            3'b100: Output = Input[4];
            3'b110: Output = Input[5];
            3'b101: Output = Input[6];
            3'b111: Output = Input[7];
        endcase
    end
    
    
    
    
endmodule

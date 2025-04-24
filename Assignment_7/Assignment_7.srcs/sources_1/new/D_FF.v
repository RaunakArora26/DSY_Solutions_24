`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/24/2025 12:04:35 AM
// Design Name: 
// Module Name: D_FF
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


module D_FF(
    input clk,
    input sync_clear, // Synchronous clear signal
    input D,
    output reg Q = 0,
    output reg Q_ = 1
    );
    
    always @(negedge clk) begin
        if (sync_clear) begin
            Q  <= 0;  // Synchronous reset
            Q_ <= 1;
        end
        else begin
            Q  <= D;
            Q_ <= ~D;
        end
    end
endmodule


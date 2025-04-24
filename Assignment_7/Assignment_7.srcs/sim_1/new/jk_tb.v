`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/24/2025 08:34:55 AM
// Design Name: 
// Module Name: jk_tb
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


module jk_tb();
reg clk =  0;
reg sync_clear = 0;
reg J;
reg K;
wire Q,Q_;
J_k_FF dut(clk,sync_clear,J,K,Q,Q_);

always #5 clk = ~clk;

initial begin
    sync_clear = 1;
    #20;
    sync_clear = 0;
    {J,K} = 2'b10;
    #20;
    {J,K} = 2'b01;
    #20;
    {J,K} = 2'b00;
    #20;
    {J,K} = 2'b11;
    #40;
    $finish;
end

endmodule

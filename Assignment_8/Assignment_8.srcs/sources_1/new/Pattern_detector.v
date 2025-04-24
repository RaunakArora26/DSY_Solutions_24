`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/29/2025 10:12:21 AM
// Design Name: 
// Module Name: Pattern_detector
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


module Pattern_detector( //non overlapping
    input clk,
    input inp,
    output reg patter_detected
    );
    
reg [1:0] state = 0;
    
always@(posedge clk)
begin
    case(state)
        0:begin
            if(inp == 0)    begin
                patter_detected <= 0;
                state <= 1;
            end
            else        begin
                patter_detected <= 0;
                state <= 0;
            end
        end
        1:begin
            if(inp == 0)    begin
                patter_detected <= 0;
                state <= 2;
            end
            else        begin
                patter_detected <= 0;
                state <= 0;
            end
        end
        2:begin
            if(inp == 0)    begin
                patter_detected <= 0;
                state <= 2;
            end
            else        begin
                patter_detected <= 0;
                state <= 3;
            end
        end
        3:begin
            if(inp == 0)    begin
                patter_detected <= 1;
                state <= 0;
            end
            else        begin
                patter_detected <= 0;
                state <= 0;
            end
           end
    endcase
end
    
    
endmodule

//module Overlapping_Detector(
//    input clk,
//    input inp,
//    output reg pattern_detected
//);
    
//reg [1:0] state = 0; // States: S0=0, S1=1, S2=2, S3=3
    
//always @(posedge clk) begin
//    pattern_detected <= 0; // Default output
//    case(state)
//        0: begin // S0: Initial state
//            if (inp == 0) state <= 1; // Move to S1
//            else state <= 0;
//        end
//        1: begin // S1: Detected first 0
//            if (inp == 0) state <= 2;
//            else state <= 0;
//        end
//        2: begin // S2: Detected "00"
//            if (inp == 0) state <= 2;
//            else state <= 3;
//        end
//        3: begin // S3: Detected "001"
//            if (inp == 0) begin
//                pattern_detected <= 1; // Output 1
//                state <= 1; // Reuse the last 0 as S1
//            end
//            else state <= 0;
//        end
//    endcase
//end
//endmodule

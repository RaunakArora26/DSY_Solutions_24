`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/31/2025 08:38:54 AM
// Design Name: 
// Module Name: Ques_2_overlapping_patter_detecotr
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


module Ques_2_overlapping_patter_detecotr(
    input clk,
    input patter_vals,
//    input reset,
    input A,
    input B,
    input C,
    output reg Z
    );

//logic - create 2 morre type FSM and connect thier o/p to the main o/t logic
//fsm1
reg [1:0] state_FSM1 = 0;//2'b00
reg FSM1_output;
always@(posedge clk)
begin
    case(state_FSM1)
        0:begin
            FSM1_output <= 0;//in morre it out in the state whereas in miley it was in if statement             
            if(patter_vals == 1)    state_FSM1 <= 1;
            else                    state_FSM1 <= 0;
        end
        1:begin
            FSM1_output <= 0;
            if(patter_vals == 1)    state_FSM1 <= 1;
            else                    state_FSM1 <= 2;
        end
        2:begin
            FSM1_output <= 0;
            if(patter_vals == 1)    state_FSM1 <= 3;
            else                    state_FSM1 <= 0;
        end
        3:begin
            FSM1_output <= 1;//in morre it out in the state whereas in miley it was in if statement             
            if(patter_vals == 1)    state_FSM1 <= 1;
            else                    state_FSM1 <= 2;
        end
    endcase
end
//fsm2
reg [1:0] state_FSM2 = 0;//2'b00
reg FSM2_output;
always@(posedge clk)
begin
    case(state_FSM2)
        0:begin
            FSM2_output <= 0;//in morre it out in the state whereas in miley it was in if statement             
            if(patter_vals == 1)    state_FSM2 <= 1;
            else                    state_FSM2 <= 0;
        end
        1:begin
            FSM2_output <= 0;
            if(patter_vals == 1)    state_FSM2 <= 2;
            else                    state_FSM2 <= 0;
        end
        2:begin
            FSM2_output <= 0;
            if(patter_vals == 1)    state_FSM2 <= 2;
            else                    state_FSM2 <= 3;
        end
        3:begin
            FSM2_output <= 1;
            if(patter_vals == 1)    state_FSM2 <= 1;
            else                    state_FSM2 <= 0;
        end
    endcase
end

//o/p logic
always@(*)
begin
    if(FSM1_output)     Z = A;
    else if(FSM2_output)     Z = B;
    else Z = C;
    
end
    
endmodule

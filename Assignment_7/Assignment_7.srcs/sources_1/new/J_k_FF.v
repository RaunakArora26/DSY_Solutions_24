`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/23/2025 11:54:15 PM
// Design Name: 
// Module Name: J_k_FF
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


module J_k_FF(
    input clk,
    input sync_clear, // Synchronous clear signal
    input J,
    input K,
    output reg Q = 0,
    output reg Q_ = 1
    );

    always @(negedge clk) begin
        if (sync_clear) begin
            Q  <= 0;  // Synchronous reset
            Q_ <= 1;
        end
        else begin
            case ({J, K})
                2'b00: begin // Prev_state
                    Q  <=  Q;
                    Q_ <=  Q_;
                end
                2'b01: begin // Reset
                    Q  <= 0;
                    Q_ <= 1;
                end
                2'b10: begin // Set
                    Q  <= 1;
                    Q_ <= 0;
                end
                2'b11: begin // Toggle
                    Q  <= ~Q;
                    Q_ <= ~Q_;
                end
            endcase
        end
    end
endmodule


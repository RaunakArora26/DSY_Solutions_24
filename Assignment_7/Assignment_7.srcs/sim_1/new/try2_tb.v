`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////


module try2_tb();
    reg b, c, d;
    
    initial begin
        b <= 1'b1;  // Set b=1 at time 0
        c <= 1'b0;  // Set c=0 at time 0
        #10 b <= 1'b0;  // Update b=0 at time 10
    end
    
    initial begin
        #1 d <= #25 (b | c);  // Evaluate (b|c)=1 at time 0, assign to d at time 25
    end
endmodule

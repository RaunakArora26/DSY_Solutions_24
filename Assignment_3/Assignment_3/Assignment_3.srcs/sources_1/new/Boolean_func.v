`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/05/2025 02:49:28 PM
// Design Name: 
// Module Name: Boolean_func
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


module boolean_function(
  input a, b, c,
  output y//y = (!a | !b)& c
);

  
  wire nor1_out, nor2_out, nor3_out, nor5_out;
  
  // Compute ~a using NOR(a, a)
  NOR_SM nor1(nor1_out, a, a);
  
  // Compute ~b using NOR(b, b)
  NOR_SM nor2(nor2_out, b, b);
  
  // Compute a & b by NOR(~a, ~b)
  NOR_SM nor3(nor3_out, nor1_out, nor2_out);
  
  // Compute ~c using NOR(c, c)
  NOR_SM nor5(nor5_out, c, c);
  
  // Compute y = ~((a & b) | ~c) which equals (~a | ~b) & c
  NOR_SM nor6(y, nor3_out, nor5_out);
  
endmodule
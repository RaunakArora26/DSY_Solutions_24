`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/05/2025 01:25:09 PM
// Design Name: 
// Module Name: NOR_SM
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


module NOR_SM(
    output out,
    input in1,
    input in2
    );
    
    supply1 vcc;
    supply0 gnd;
    wire w1;
    
    //PUN
    pmos A1(w1,vcc,in1);//out,data,ctrl
    pmos B1(out,w1,in2);
    
    //PDN
    nmos A2(out,gnd,in1);
    nmos B2(out,gnd,in2);
    
    
endmodule

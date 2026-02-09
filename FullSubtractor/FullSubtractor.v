`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/27/2026 09:04:37 PM
// Design Name: 
// Module Name: FullSubtractor
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
module FullSubtractor( output difference,borrow , input a, b, bin);
wire A; wire[2:0]w;
xor (difference, a,b,bin);
not (A,a);
and (w[0],A,b);
and (w[1],A,bin);
and (w[2],b,bin);
or(borrow,w[0],w[1],w[2]);
endmodule
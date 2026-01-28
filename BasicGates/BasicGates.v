`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/24/2026 08:48:05 AM
// Design Name: 
// Module Name: BasicGates
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
module BasicGates(y,a,b);
output wire [6:0]y ;
input  a,b;
//Not Gate
assign y[0]= ~a;
//And Gate
assign y[1] = a&b;
//Or Gate
assign y[2] = a|b;
//Nand Gate
assign y[3] = ~(a&b);
//Nor Gate
assign y[4] = ~(a|b);
//Xor Gate
assign y[5] = a^b;
//Xnor Gate
assign y[6] = ~(a^b);
endmodule

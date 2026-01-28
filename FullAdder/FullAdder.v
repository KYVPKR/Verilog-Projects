`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/27/2026 06:26:33 PM
// Design Name: 
// Module Name: FullAdder
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


module FullAdder( output sum, carry , input a, b, cin);
wire [2:0]w;
xor (sum, a,b,cin);
and (w[0],a,b);
and (w[1],a,cin);
and (w[2],b,cin);
or (carry,w[0],w[1],w[2]);
endmodule

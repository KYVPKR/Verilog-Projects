`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: RGUKT Srikakulam
// Engineer: Pavan Kumar Reddy Kamatham
// 
// Create Date: 02/10/2026 08:29:00 AM
// Design Name: FullAdder
// Module Name: FullAdder
// Project Name: RippleCarryAdder_Nbit
// Target Devices: 
// Tool Versions: vivado 2018.2
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module FullAdder(
    input a,b,cin,
    output sum,
    output carry ); // carry gets or of and gate outputs
    
    wire x,y,z;
    xor x1(sum,a,b,cin);
    and a1(x,a,b);
    and a2(y,cin,b);
    and a3(z,cin,a);
    or o1(carry,x,y,z);
    
endmodule

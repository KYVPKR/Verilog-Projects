`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: rgukt srikakulam
// Engineer: Pavan Kumar Reddy Kamatham
//
// Create Date: 02/09/2026 08:31:16 PM
// Design Name: FullAdder
// Module Name: FullAdder
// Project Name: FullAdder 
// Target Devices: 
// Tool Versions: Xilinx Vivado 2018.2
// Description:  Getting started with verilog using FullAdder
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments: NA
// 
//////////////////////////////////////////////////////////////////////////////////
module FullAdder(
    output sum,
    output carry, // OR of Carries
    input a,
    input b,
    input cin);
                 
    wire Isum; //Intermediate Sum
    wire [1:0]Icarry ;//Intermediate Sum
    
    HalfAdder H1(Isum,Icarry[0],a,b);
    HalfAdder H2(sum,Icarry[1],cin,Isum);
    or o0(carry,Icarry[0],Icarry[1]);
    
endmodule

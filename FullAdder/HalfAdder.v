`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: rgukt srikakulam
// Engineer: Pavan Kumar Reddy Kamatham
//
// Create Date: 02/09/2026 08:31:16 PM
// Design Name: HalfAdder
// Module Name: HalfAdder
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
module HalfAdder(
    output z,
    output y,
    input a, 
    input b
    );
    
    xor X1(z,a,b);//sum
    and a1(y,a,b);//carry
    
endmodule

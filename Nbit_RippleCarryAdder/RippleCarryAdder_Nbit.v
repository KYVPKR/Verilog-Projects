`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: RGUKT Srikakulam
// Engineer: Pavan Kumar Reddy Kamatham
// 
// Create Date: 02/10/2026 08:27:27 AM
// Design Name: RippleCarryAdder_Nbit
// Module Name: RippleCarryAdder_Nbit
// Project Name: 
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


module RippleCarryAdder_Nbit#(parameter N=8)(
        input [N-1:0]A,
        input [N-1:0]B,
        input cin,
        output [N-1:0]sum,
        output cout);
        
    wire [N:0]W;
    genvar i; 
    assign W[0] = cin;
    generate 
        for (i=0;i<N;i=i+1) begin : FAblock     
            FullAdder fa(
                .a(A[i]), //n no.of a inputs and every fa gets one digit from a
                .b(B[i]), // n no.of a outputs and every fa gets one digit from b
                .cin(W[i]), // every fa has one cin
                .sum(sum[i]), //every fa gives one sum
                .carry(W[i+1]) // every fa gives carry to the next fa
            );  
        end
    endgenerate
    assign cout = W[N];
endmodule
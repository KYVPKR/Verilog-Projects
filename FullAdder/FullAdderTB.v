`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/27/2026 06:40:31 PM
// Design Name: 
// Module Name: FullAdderTB
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


module FullAdderTB();
reg a,b,cin;
wire sum, carry;
FullAdder Instance(.sum(sum),.carry(carry),.a(a),.b(b),.cin(cin));
initial
begin
$display("module initialized");
$display("time , a , b , cin , sum , carry");
$monitor("%t %b  %b  %b | %b  %b ",$time,a,b,cin,sum,carry);
{a,b,cin} = 0; #1000;
{a,b,cin} = 1; #1000;
{a,b,cin} = 2; #1000;
{a,b,cin} = 3; #1000;
{a,b,cin} = 4; #1000;
{a,b,cin} = 5; #1000;
{a,b,cin} = 6; #1000;
{a,b,cin} = 7; #1000;
$finish;
end
endmodule

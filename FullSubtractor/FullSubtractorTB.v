`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/27/2026 09:05:27 PM
// Design Name: 
// Module Name: FullSubtractorTB
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



module FullSubtractorTB();
reg a,b,bin;
wire difference, borrow;
FullSubtractor Instance(.difference(difference),.borrow(borrow),.a(a),.b(b),.bin(bin));
initial
begin
$display("module initialized");
$display("time , a , b , bin , difference , borrow");
$monitor("%t %b  %b  %b | %b  %b ",$time,a,b,bin,difference,borrow);
{a,b,bin} = 0; #1000;
{a,b,bin} = 1; #1000;
{a,b,bin} = 2; #1000;
{a,b,bin} = 3; #1000;
{a,b,bin} = 4; #1000;
{a,b,bin} = 5; #1000;
{a,b,bin} = 6; #1000;
{a,b,bin} = 7; #1000;
$finish;
end
endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/24/2026 09:30:32 AM
// Design Name: 
// Module Name: BasicGatesTB
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


module BasicGatesTB();
reg a,b;
wire [6:0]y;
BasicGates tb(.y(y),.a(a),.b(b));
initial
begin
a=0;b=0;#500;
a=0;b=1;#500;
a=1;b=0;#500;
a=1;b=1;#500;
$finish;
end
endmodule

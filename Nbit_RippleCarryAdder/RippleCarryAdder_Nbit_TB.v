`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/12/2026 07:28:43 AM
// Design Name: 
// Module Name: RippleCarryAdder_Nbit_TB
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


module RippleCarryAdder_Nbit_TB();
    parameter N=8;
    reg [N-1:0]a,b;
    reg cin;
    wire [N-1:0]sum;
    wire cout ;

    RippleCarryAdder_Nbit #(N) TB (
                            .A(a),
                            .B(b),
                            .cin(cin),
                            .sum(sum),
                            .cout(cout)
                            );                       
     initial 
         begin
         
            $monitor("%t,%d,%d,%d,%d,%d",$time,a,b,cin,sum,cout);
            #10 {a,b,cin} = {"E","C",1'b1}; #100; // E = "01000101"
            #10 {a,b,cin} = {"E","E",1'b0}; #100; // C = "01000011"
            #10 {a,b,cin} = {"C","S",1'b1}; #100; // S = "01010011"
            
            repeat (6)
                begin
                    #10 {a,b,cin} = {$random,$random,$random}; #100;
                end
        $finish;
         end                      
endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/09/20 13:03:40
// Design Name: 
// Module Name: fa_n_mux_tb
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


module fa_n_mux_tb(

    );
    reg a, b, cin;
    wire s, cout;
    
    fa_n_mux uut(.a(a), .b(b), .cin(cin), .s(s), .cout(cout));
    
    initial begin
    a = 0;
    b = 0;
    cin = 0;
    
    #2000 $finish;
    end
    
    always #50 a = ~a;
    always #100 b = ~b;
    always #200 cin = ~cin;
    
endmodule

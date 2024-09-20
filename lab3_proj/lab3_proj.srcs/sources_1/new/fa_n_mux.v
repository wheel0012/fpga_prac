`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/09/20 12:52:30
// Design Name: 
// Module Name: fa_n_mux
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


module fa_n_mux(
    input a,
    input b,
    input cin,
    output s,
    output cout
    );
    wire cin_not;
    wire zero;
    wire one;
    wire s;
    wire cout;
    wire [3:0] mux_s_input;
    wire [3:0] mux_c_input;
    wire [1:0] mux_s;
    assign cin_not = ~cin;
    assign one = 1;
    assign zero = 0;
    assign mux_s_input = {cin, cin_not,cin_not,cin};
    assign mux_c_input = {one, cin,cin,zero};
    assign mux_s = {a,b};
    mux4x1 mux_sum(mux_s_input, mux_s, s);
    mux4x1 mux_cout(mux_c_input, mux_s, cout);
    //always @(a,b,cin, cin_not) begin
    //end
endmodule

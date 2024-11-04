`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/18 13:03:17
// Design Name: 
// Module Name: d_vault_tb
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

//////////////////////////////////////////////////////////////////////////////////


module d_vault_tb(

    );
    reg [9:0] in;
    reg reset, clk;
    wire out;
    wire [3:0] out_r;
    d_vault dv(.in(in),
        .clk(clk),
        .reset(reset),
        .out(out),
        .q(out_r)
        );
    
    initial begin
    in = 0; reset = 0; clk = 0;
    #50 reset = 1;
    #100 in[3] = 1;
    //#10 in[3] = 0;
    #100 in[1] = 1;
    //#10 in[1] = 0;
    #100 in[9] = 1;
    //#10 in[9] = 0;
    #100 in[0] = 1;
    //#10 in[0] = 0;
    
    
    //#100 reset = 0;
    in = 0;
    //#10 reset = 1;
    
    #10 in[3] = 1;
    //#10 in[3] = 0;
    #10 in[1] = 1;
    //#10 in[1] = 0;
    #10 in[9] = 1;
    //#10 in[9] = 0;
    #10 in[2] = 1;
    //#10 in[2] = 0;
    
    end
    always #5 clk = ~clk;
endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/29 05:58:06
// Design Name: 
// Module Name: buzzer
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


module buzzer
#(parameter clk_100MHz = 27'd100_000_000)
(
    input clk,
    input reset,
    input sw_up,
    input sw_left,
    input sw_mid,
    input sw_right,
    input sw_down,
    output buzz
    );
    
    localparam do_hz = clk_100MHz/27'd523/2;
    localparam re_hz = clk_100MHz/27'd587/2;
    localparam mi_hz = clk_100MHz/27'd659/2;
    localparam sol_hz = clk_100MHz/27'd783/2;
    localparam ra_hz = clk_100MHz/27'd880/2;
    
    wire clk_do,clk_re,clk_mi,clk_sol,clk_ra;
    clk_divider#(do_hz) div_do(clk,reset,clk_do);
    clk_divider#(re_hz) div_re(clk,reset,clk_re);
    clk_divider#(mi_hz) div_mi(clk,reset,clk_mi);
    clk_divider#(sol_hz) div_sol(clk,reset,clk_sol);
    clk_divider#(ra_hz) div_ra(clk,reset,clk_ra);
    reg buzz_hz;
    always @(*) begin
        if(!reset) buzz_hz = 0;
        else if(sw_down) buzz_hz = clk_do;
        else if(sw_left) buzz_hz = clk_re;
        else if(sw_mid) buzz_hz = clk_mi;
        else if(sw_right) buzz_hz = clk_sol;
        else if(sw_up) buzz_hz = clk_ra;
        else buzz_hz = 0;
    end 
    
    assign buzz = buzz_hz;
endmodule

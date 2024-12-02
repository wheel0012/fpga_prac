`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/29 06:11:33
// Design Name: 
// Module Name: schoolbell_fsm
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
`define do  3'b001
`define re  3'b010
`define mi  3'b011
`define sol  3'b100
`define ra  3'b101
`define none  3'b000

module schoolbell_fsm
#(parameter clk_100MHz = 27'd100_000_000)
(
    input clk,
    input reset,
    input sw_1,
    
    output buzz,
    output LED1//,
    //output current,
    //output [15:0] cnt
    );
    
    //assign LED1 = state;
    //assign current = notes[cnt];
    
    reg [25:0] cnt;
    
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
        if(sw_1 == 1'b1 & clk_1hz == 1) begin
            if(!reset) buzz_hz = 0;
            else if(notes[cnt] == `do) buzz_hz = clk_do;
            else if(notes[cnt] == `re) buzz_hz = clk_re;
            else if(notes[cnt] == `mi) buzz_hz = clk_mi;
            else if(notes[cnt] == `sol) buzz_hz = clk_sol;
            else if(notes[cnt] == `ra) buzz_hz = clk_ra;
            else if(notes[cnt] == `none) buzz_hz = 0;
            else buzz_hz = 0;
        end
       
        else begin
            buzz_hz = 0;
        end
        
  end 
    
    assign buzz = buzz_hz;
    
    wire [2:0] notes[0:29];
        assign notes[0] = `sol;
        assign notes[1] = `sol;
        assign notes[2] = `ra;
        assign notes[3] = `ra;
        assign notes[4] = `none;
        assign notes[5] = `sol;
        assign notes[6] = `sol;
        assign notes[7] = `mi;
        assign notes[8] = `none;
        assign notes[9] = `sol;
        assign notes[10] = `sol;
        assign notes[11] = `none;
        assign notes[12] = `mi;
        assign notes[13] = `mi;
        assign notes[14] = `re;
        assign notes[15] = `sol;
        assign notes[16] = `sol;
        assign notes[17] = `ra;
        assign notes[18] = `ra;
        assign notes[19] = `none;
        assign notes[20] = `sol;
        assign notes[21] = `sol;
        assign notes[22] = `mi;
        assign notes[23] = `none;
        assign notes[24] = `sol;
        assign notes[25] = `mi;
        assign notes[26] = `re;
        assign notes[27] = `mi;
        assign notes[28] = `do;
        assign notes[29] = `none;
        
    wire clk_1hz;
    clk_divider #(2499_9999) div_2hz (clk, reset, clk_1hz);
    
    
    always @(posedge clk_1hz, negedge reset) begin
        if(!reset) begin
            cnt = 0;
        end 
        else if(state == idle_state) begin 
            cnt = 0;
        end
        else if(state == play_state) begin
            if(cnt != 30)
                cnt =cnt+1;
        end
    end
    wire state;
    reg state_pos,state_neg, next_state;
    assign state = state_pos | state_neg;
    
    parameter idle_state=0, play_state=1;
    
    always @(posedge sw_1, negedge reset) begin
        if(!reset) begin
            state_pos = idle_state;
        end
        else begin
            if(state == idle_state) begin
                state_pos = play_state;
                end
            else begin
                state_pos = idle_state;
                end 
            end
    end
    always @(negedge sw_1, negedge reset) begin
         if(!reset) begin
            state_pos = idle_state;
            end
        else if(state == idle_state) begin
                state_neg = play_state;
                end
            else begin
                state_neg = idle_state;
                end 
            
    end
    
    
endmodule

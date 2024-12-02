`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/12/01 17:11:56
// Design Name: 
// Module Name: control_block
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


module control_block(
    input clk,
    input reset,
    output reg irload_sig,
    output reg pcload_sig,
    output reg z_en_sig,
    output reg rf_w_en_sig,
    output reg rf_r_a_en_sig,
    output reg rf_r_b_en_sig,
    output reg [2:0] alu_op_sig,
    output reg [1:0] rf_w_sel_sig
    );
    
    reg [1:0] state, next_state;
    parameter [1:0] 
        fetch = 2'b00,
        decode = 2'b01, 
        execute = 2'b10;
        
    always @(state) begin
        case(state)
            fetch : next_state = decode;
            decode  : next_state = execute;
            execute : next_state = fetch;
        endcase
    end 

    always @(posedge clk, negedge reset) begin
        if (!reset) state <= fetch;
        else         state <= next_state;
    end

    always @(state) begin
        
        
    end
    
    
endmodule

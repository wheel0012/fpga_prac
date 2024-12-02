`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/29 20:10:56
// Design Name: 
// Module Name: fsm_1
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


module fsm_1(
        input in,
        input clk,
        input reset,
        output q,
        output state
    );
    
    reg [3:0] state, next_state;
    parameter [3:0] 
        start = 3'b000,
        rd0_once = 3'b001, 
        rd1_once = 3'b010,
        rd0_twice = 3'b011, 
        rd1_twice = 3'b100;
    
    always @(state, in) begin
        case(state)
            start : if(in == 0) next_state = rd0_once;
                    else if(in == 1) next_state = rd1_once;

            rd0_once  : if(in == 0) next_state = rd0_twice;
                        else if(in == 1) next_state = rd1_once;

            rd0_twice : if(in == 0) next_state = rd0_twice;
                        else if(in == 1) next_state = rd1_once;
                        
            rd1_once  : if(in == 0) next_state = rd0_once;
                        else if(in == 1) next_state = rd1_twice;

            rd1_twice : if(in == 0) next_state = rd0_once;
                        else if(in == 1) next_state = rd1_twice;
        endcase
    end 

    always @(posedge clk, negedge reset) begin
        if (!reset) state <= start;
        else         state <= next_state;
    end

    //fsm 화살표의 끝을 보자. 끝에 해당하는 in && state 하면 조건 완성
    assign q = (state == rd0_twice && in == 0)
                || (state == rd1_twice && in == 1)? 1 : 0;
endmodule

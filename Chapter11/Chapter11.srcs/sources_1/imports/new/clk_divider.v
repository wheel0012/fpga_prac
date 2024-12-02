`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/08 12:56:46
// Design Name: 
// Module Name: clk_divider
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


module clk_divider #(parameter divide = 49999999)(
    input clk,
    input reset,
    output reg clk_out
    );
    
    //카운트 변수 
    reg [25:0] cntr;
    
    //시작시 0으로 초기화. synthesis 안 될 수도 있음
    initial begin
        cntr = 0;
    end
    
    //카운터가 divide 값에 도달하면 clk_out 반전 후 카운터 초기화
    always @(posedge clk, negedge reset) begin
        if(!reset)cntr = 0;
        else begin
            cntr = cntr + 1;
            
            if(cntr > divide) begin
                clk_out <= ~clk_out;
                cntr <= 0;
            end 
        end
        
       
    end
endmodule
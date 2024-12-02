`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/28 21:25:17
// Design Name: 
// Module Name: pc_block
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


module pc_block(
    input pc_load,
    input reset,
    input [3:0] pc_in,
    output [3:0] pc_out,
    input clk
    );
    reg [3:0] pc_reg;
    assign pc_out = pc_reg;
    
    always @(posedge clk, negedge reset) begin
        if(!reset) pc_reg <= 0;
        else if(pc_load == 1'b1) pc_reg <= pc_in;
    end
    
endmodule

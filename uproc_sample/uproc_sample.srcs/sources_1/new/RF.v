`timescale 1ns/1ps
module RF(
    input clk,
    input reset,

    input WE,
    input [1:0] WA,

    input RAE,
    input [1:0] RAA,

    input RBE,
    input [1:0] RBA,

    input [9:0] I,
    input [9:0] N,
    output [9:0] A,
    output [9:0] B
);
    
    reg [9:0] mem [0:3];

    assign A = RAE ? mem[RAA] : N;
    assign B = RBE ? mem[RBA] : N;
    integer i;
    
    always @(posedge clk, negedge reset) begin
        if(!reset) begin
            for(i = 0; i < 4; i = i + 1) begin
                mem[i] <= 0;
            end
        end
        else if(WE) begin
            mem[WA] <= I;
        end
    end


endmodule
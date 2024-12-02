`timescale 1ns/1ps
module fnd_ctrl(
    input [9:0] result,
    input clk,
    input reset,
    output reg [7:0] digit,
    output reg [7:0] seg_data
    );
    
    
    //1ms마다 digit 변경
    always @(posedge clk, negedge reset) begin
        if(!reset) digit <= 8'b0000_0001;
        else digit <= {{digit[0]}, {digit[7:1]}};
    
    end
    
    //1ms마다 digit에 맞춰 seg_data 변경
    always @(posedge clk, negedge reset) begin
        if(!reset) begin
            seg_data = 8'b1111_1110;
        end
        
        case (digit)
            8'b0000_1000: seg_data <= fnd_decode(result/256);
            8'b0000_0100: seg_data <= fnd_decode((result%256)/16);
            8'b0000_0010: seg_data <= fnd_decode(result%16);
            default: seg_data <= 8'd0;
        endcase
    end 
    
    
    function [7:0] fnd_decode(input [7:0] in);
    begin
        case (in)
            8'b0000_0000: fnd_decode = 8'b1111_1100; //0
            8'b0000_0001: fnd_decode = 8'b0110_0000; //1
            8'b0000_0010: fnd_decode = 8'b1101_1010; //2
            8'b0000_0011: fnd_decode = 8'b1111_0010; //3
            8'b0000_0100: fnd_decode = 8'b0110_0110; //4
            8'b0000_0101: fnd_decode = 8'b1011_0110; //5
            8'b0000_0110: fnd_decode = 8'b1011_1110; //6
            8'b0000_0111: fnd_decode = 8'b1110_0100; //7
            8'b0000_1000: fnd_decode = 8'b1111_1110; //8
            8'b0000_1001: fnd_decode = 8'b1111_0110; //9
            8'b0000_1010: fnd_decode = 8'b1110_1110; //A
            8'b0000_1011: fnd_decode = 8'b0011_1110; //b
            8'b0000_1100: fnd_decode = 8'b1001_1110; //C
            8'b0000_1101: fnd_decode = 8'b0111_1010; //d
            8'b0000_1110: fnd_decode = 8'b1001_1110; //E
            8'b0000_1111: fnd_decode = 8'b1000_1110; //F
            default: fnd_decode = 8'b0;
        endcase
    end
    endfunction
    
    
endmodule

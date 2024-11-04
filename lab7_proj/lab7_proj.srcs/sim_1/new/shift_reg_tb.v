`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/18 12:29:07
// Design Name: 
// Module Name: shift_reg_tb
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


module shift_reg_tb(

    );
    
    reg clk, reset, sli, sri, dir;
    wire slo, sro;
    
    shift_reg shifter(.clk(clk),.reset(reset),
        .sli(sli),.sri(sri), .sro(sro),.slo(slo),
        .dir(dir));
        
    initial begin
        clk = 0; reset = 0; sli = 0;sri = 0; dir = 0;
        #50 reset = 1;
        //#40 sri = 1;
        //#25 sri = 0;
        //#375 sli = 1;
        //#25 sli = 0;
        
        #2000 $finish;
    end
    
    always #5 clk = ~clk;
    always #75 sli = ~sli;
    always #150 sri = ~sri;
    always #1000 dir = ~dir;
    
endmodule

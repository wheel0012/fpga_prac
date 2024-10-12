`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/11 12:15:56
// Design Name: 
// Module Name: jkff_tb
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


module jkff_tb(

    );
    
    jkff uut (
    .j(j),.k(k),.pr_b(pr_b),.clr_b(clr_b),.q(q),.clk(clk)
    );
    reg j, k, pr_b, clr_b, clk;
    wire clk;
    
    initial begin
        clk = 0; pr_b = 0; clr_b = 1; j = 0; k = 0;
        
        #100
        pr_b = 1; clr_b = 0;
        #100
        clr_b = 1;
        #100
        j = 1; k = 1;
/*100
        j = 0; k = 1;
        #100
        j = 1;
        #100
        k = 0; j = 0;*/
        
    end
    
    always #10 clk = ~clk;
    
endmodule

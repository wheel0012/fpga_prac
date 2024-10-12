`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/11 13:04:55
// Design Name: 
// Module Name: bin8bitcntr_tb
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


module bin8bitcntr_tb(

    );
    
    reg pr_b, clr_b, clk;
    wire [3:0] q;
    bincntr uut (.pr_b(pr_b),.clr_b(clr_b), .q(q), .clk(clk));
    
    initial begin
        pr_b = 0; clr_b = 1; clk = 0;
        #10 pr_b = 1; clr_b = 0;
        #10 clr_b = 1;
    end
    
    always #10 clk = ~clk;
endmodule

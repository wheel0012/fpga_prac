`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/09/13 02:09:47
// Design Name: 
// Module Name: fa1
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


module fa1(
    input a,
    input b,
    input cin,
    output s,
    output cout
    );
    reg s, cout;
    
    
    
    //assign s = (a^b)^cin;
    //assign cout = cin&(a^b)|(a&b);
    always @(a, b, cin)
    begin
        if      (a == 0 && b == 0 && cin == 0) begin s = 0; cout = 0; end
        else if (a == 0 && b == 0 && cin == 1) begin s = 1;  = 0; end
        else if (a == 0 && b == 1 && cin == 0) begin s = 1; cout = 0; end
        else if (a == 0 && b == 1 && cin == 1) begin s = 0; cout = 1; end
        else if (a == 1 && b == 0 && cin == 0) begin s = 1; cout = 0; end
        else if (a == 1 && b == 0 && cin == 1) begin s = 0; cout = 1; end
        else if (a == 1 && b == 1 && cin == 0) begin s = 0; cout = 1; end
        else if (a == 1 && b == 1 && cin == 1) begin s = 1; cout = 1; end
    end
endmodule

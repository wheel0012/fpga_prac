`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/09/13 14:07:32
// Design Name: 
// Module Name: fa4bit
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


module BCDa(
    input [3:0] in1,
    input [3:0] in2,
    output [3:0] out,
    output c
    );
    
    integer i;
    
    reg [4:0] cin_f;
    reg [4:0] cin_b;
    
    reg [3:0] out;
    reg [3:0] conn; // internal connection
    reg cout4;
    
    
    reg [3:0] bck_in2;
    
    reg and_84;
    reg and_82;
    reg c;
    
    
    
    initial begin
        cin_f = 0;
        cin_b = 0;
        conn = 0;
    end
    
    
    always @(in1, in2) begin
        
        //input adder
        for(i = 0; i < 4; i=i+1)
            begin
                if      (in1[i] == 0 && in2[i] == 0 && cin_f[i] == 0) begin conn[i] = 0; cin_f[i+1] = 0; end
                else if (in1[i] == 0 && in2[i] == 0 && cin_f[i] == 1) begin conn[i] = 1; cin_f[i+1] = 0; end
                else if (in1[i] == 0 && in2[i] == 1 && cin_f[i] == 0) begin conn[i] = 1; cin_f[i+1] = 0; end
                else if (in1[i] == 0 && in2[i] == 1 && cin_f[i] == 1) begin conn[i] = 0; cin_f[i+1] = 1; end
                else if (in1[i] == 1 && in2[i] == 0 && cin_f[i] == 0) begin conn[i] = 1; cin_f[i+1] = 0; end
                else if (in1[i] == 1 && in2[i] == 0 && cin_f[i] == 1) begin conn[i] = 0; cin_f[i+1] = 1; end
                else if (in1[i] == 1 && in2[i] == 1 && cin_f[i] == 0) begin conn[i] = 0; cin_f[i+1] = 1; end
                else if (in1[i] == 1 && in2[i] == 1 && cin_f[i] == 1) begin conn[i] = 1; cin_f[i+1] = 1; end
            end
        //Propagate
        cout4 = cin_f[4];
        and_84 = conn[2] & conn[3];
        and_82 = conn[3] & conn[1];
        c = cout4 | and_84 | and_82;
        bck_in2[3] = 0;
        bck_in2[2] = c;
        bck_in2[1] = c;
        bck_in2[0] = 0;
        
        //output adder
        for(i = 0; i < 4; i=i+1)
            begin
                if      (conn[i] == 0 && bck_in2[i] == 0 && cin_b[i] == 0) begin out[i] <= 0; cin_b[i+1] = 0; end
                else if (conn[i] == 0 && bck_in2[i] == 0 && cin_b[i] == 1) begin out[i] <= 1; cin_b[i+1] = 0; end
                else if (conn[i] == 0 && bck_in2[i] == 1 && cin_b[i] == 0) begin out[i] <= 1; cin_b[i+1] = 0; end
                else if (conn[i] == 0 && bck_in2[i] == 1 && cin_b[i] == 1) begin out[i] <= 0; cin_b[i+1] = 1; end
                else if (conn[i] == 1 && bck_in2[i] == 0 && cin_b[i] == 0) begin out[i] <= 1; cin_b[i+1] = 0; end
                else if (conn[i] == 1 && bck_in2[i] == 0 && cin_b[i] == 1) begin out[i] <= 0; cin_b[i+1] = 1; end
                else if (conn[i] == 1 && bck_in2[i] == 1 && cin_b[i] == 0) begin out[i] <= 0; cin_b[i+1] = 1; end
                else if (conn[i] == 1 && bck_in2[i] == 1 && cin_b[i] == 1) begin out[i] <= 1; cin_b[i+1] = 1; end
            end
        
    end

    
endmodule

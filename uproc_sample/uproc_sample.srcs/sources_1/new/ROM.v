`timescale 1ns/1ps
module ROM(
    input clk,
    input [3:0] address,
    input [1:0] program_sel,
    output reg [9:0] Q
);

always @(clk) begin
    case (program_sel) 
     2'b00: begin
        case(address)
            1: Q <= 10'b0010000000; // in r0
            2: Q <= 10'b0011000000; // out r0
            3: Q <= 10'b0000000000; // halt
        endcase
        end
        
        2'b01: begin
            case(address)
            1: Q <=     10'b1111000000; //MOV R0, #0000 
            2: Q <=     10'b1111010000; //MOV R1, #0000  
            3: Q <=     10'b1111100000; //MOV R2, #0000  
            4: Q <=     10'b1111111010; //MOV R3, #1010   
            5: Q <=     10'b0010000000; //IN R0       
            6: Q <=     10'b0010000001; //IN R1   
            7: Q <=     10'b1011100001; //ADD R2, R0, R1  
            8: Q <=     10'b0011000010; //OUT R2    
            9: Q <=     10'b1000001011; //LT R2, R3   
            10: Q <=    10'b0110000110; //JNZ LOOP 
            11: Q <=    10'b0000000000; //HALT  
            endcase
            end
        2'b10: begin
            case(address)
            1: Q <= 10'b1111000000; //MOV R0, #0000; R1 = 0, 입력 숫자 
            2: Q <= 10'b1111010000; //MOV R1, #0001       ; R2 = 1, 감소값
            3: Q <= 10'b0010000000; //IN R0             ; 카운트다운 시작 숫자를 입력받음
            4: Q <= 10'b0011000000; //  OUT R0            ; 현재 숫자 출력  
            5: Q <= 10'b1010000001; //  DEC R0, 1 #0001     ; R0 = R0 - 1    
            6: Q <= 10'b1000000100; //  LT R1, R0#0000      ; Z = 1이면 R1 < 0 
            7: Q <= 10'b0111001001; //  JN HALT           ; Z = 1이면 종료
            8: Q <= 10'b0101000100; //  JMP COUNTDOWN     ; 계속 카운트다운 
            9: Q <= 10'b0000000000; //  HALT 
            endcase
            end
        2'b11: begin
            case(address)
            1: Q <= 10'b0010000000; // in r0
            2: Q <= 10'b0011000000; // out r0
            3: Q <= 10'b0000000000; // halt
            //4'b0101: Q <= 10'b0010000000;
            //4'b0110: Q <= 10'b0010000000;
            endcase
            end
    endcase
end

endmodule
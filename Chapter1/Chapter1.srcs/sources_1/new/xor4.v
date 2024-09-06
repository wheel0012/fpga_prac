module xor4(
    input in1,
    input in2,
    output out1
    );
    
    assign out1 = (in1&(~in2))|((~in1)&in2);
    
endmodule
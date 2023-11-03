`timescale 1ns/1ns
`include "ALU.v"

module tb_ALU;
    reg [31:0]X,Y;
    reg [1:0]Aluc;
    wire[31:0] R;
    wire Z,V;
    
    initial begin
        X = 'b11110000111100001111000011110000;
        Y = 'b00001111000011110000111100001111;
        Aluc = 'b00;
            
        #20;
        Aluc = 'b01;
            
        #20;
        Aluc = 'b10;
            
        #20;
        Aluc = 'b11;
    end

    ALU data(
        .X(X),
        .Y(Y),
        .Aluc(Aluc),
        .R(R),
        .Z(Z),
        .V(V)
    );
    initial begin
        $dumpfile("ALU.vcd");
        $dumpvars(0,tb_ALU);
        #10000 $finish;
    end
endmodule
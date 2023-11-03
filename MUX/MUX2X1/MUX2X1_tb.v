`timescale 1ns/1ns
`include "MUX2X1.v"

module tb_MUX2X1();
    reg A,B;
    reg S;
    wire Y;

    initial begin
        A=1;
        B=0;
        S=1'h1;
        #100
        S=1'h0;
    end

    MUX2X1 data1(
        .A(A),
        .B(B),
        .S(S)
    );

    initial begin
      $dumpfile("MUX2X1.vcd");
      $dumpvars(0,tb_MUX2X1);
      #10000 $finish;
    end
endmodule
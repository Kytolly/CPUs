`timescale 1ns/1ns
`include "./MUX2X32.v"

module tb_MUX2X32();
    reg[31:0] A,B;
    reg S;
    wire[31:0] Y;

    initial begin
        A=32'h8b;
        B=32'h5f;
        S=1'h1;
        #100
        S=1'h0;
    end

    MUX2X32 data1(
        .A(A),
        .B(B),
        .S(S)
    );
    initial begin
      $dumpfile("MUX2X32.vcd");
      $dumpvars(0,tb_MUX2X32);
      #10000 $finish;
    end
endmodule
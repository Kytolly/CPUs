`timescale 1ns/1ns
`include "EXT16T32.v"
module tb_EXT16T32();
    integer j=-100;
    reg[15:0]X;
    reg B;
    wire[31:0] Y;

    initial begin
       for(j=-100;j<=100;j++)begin
          X=j;
          B=j%2;
          #50;
       end
    end

    EXT16T32 data(
        .X(X),
        .B(B),
        .Y(Y)
    );

    initial begin
      $dumpfile("EXT16T32.vcd");
      $dumpvars(0,tb_EXT16T32);
      #10000 $finish;
    end
endmodule
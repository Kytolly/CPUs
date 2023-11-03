`include "SHIFTER_32.v"
`timescale 1ns/1ns
module tb_SHIFTER_32();
    reg [31:0] X;
    reg [4:0] Sa;
    reg Arith,Right;
    wire[31:0] Sh;
    integer j=0;

    initial begin
       for(j=0;j<1000;j++)begin
           X=j;
           Sa=(3*j+5)%32;
           Arith=j%2;
           Right=(2*j+1)%23%2;
           #50;
       end
    end

    SHIFTER_32 data(
        .X(X),
        .Sa(Sa),
        .Arith(Arith),
        .Right(Right)
    );

    initial begin
      $dumpfile("SHIFTER_32.vcd");
      $dumpvars(0,tb_SHIFTER_32);
      #10000 $finish;
    end
endmodule
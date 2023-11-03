`include "CPT4.v"
`timescale 1ns/1ns
module tb_CPT4();
    reg[3:0]A,B;
    wire Y;
    integer j=0;
    initial begin 
        for(j=0;j<1000;j++)begin
            A=(5*j+4)%16;
            B=(3*j)%16;
            #50;
        end
    end

    CPT4 data(
        .A(A),
        .B(B),
        .Y(Y)
    );

    initial begin
      $dumpfile("CPT4.vcd");
      $dumpvars(0,tb_CPT4);
      #10000 $finish;
    end
endmodule
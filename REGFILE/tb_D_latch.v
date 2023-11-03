`include "D_Latch.v"
`timescale 1ns/1ns

module tb_D_Latch;
    reg D,En;
    wire Q,Qn;

    initial begin;
       D=1;
       En=1;
       #20;
       D=0;
       En=1;
       #20;
       En=0;
       D=0;
       En=0;
       #20;
       D=1;
       En=0;
       #20;
    end
    D_Latch data( 
        .D(D), 
        .En(En), 
        .Q(Q), 
        .Qn(Qn) 
    );
    initial begin
      $dumpfile("D_Latch.vcd");
      $dumpvars(0,tb_D_Latch);
      #10000 $finish;
    end
endmodule
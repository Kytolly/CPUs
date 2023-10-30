`timescale 1ns/1ns
`include "DEC5T32E.v"
module tb_DEC5T32E();
    reg[4:0] I;
    wire[31:0] Y;
    reg[0:0] En;
    integer j;

    initial begin
      for(j=0;j<32;j=j+1)begin
         I=j;
         En=(j<16)?1'b1:1'b0;
         #100;
      end
    end
    
    DEC5T32E DEC5T32E_inist(
        .I(I),
        .En(En)
    );

    initial begin
      $dumpfile("DEC5T32E.vcd");
      $dumpvars(0,tb_DEC5T32E);
      #10000 $finish;
    end
endmodule
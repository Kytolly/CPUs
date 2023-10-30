`timescale 1ns/1ns
`include "DEC2T4E.v"
module tb_DEC2T4E();
    integer j;
    reg[0:0] I0,I1,En;
    wire[0:0] Y1,Y2,Y3,Y0;
    initial begin
      for(j=0;j<32;j=j+1) begin
        if(j!=0) #100;
        I0=(j%2==0)?1'b1:1'b0;
        I1=(j%3==0)?1'b0:1'b1;
        En=(j%5==0)?1'b0:1'b1;
      end
    end

    DEC2T4E data(
        .I0(I0),
        .I1(I1),
        .En(En),
        .Y0(Y0),
        .Y1(Y1),
        .Y2(Y2),
        .Y3(Y3)
    );

    initial begin
      $dumpfile("DEC2T4E.vcd");
      $dumpvars(0,tb_DEC2T4E);
      #10000 $finish;
    end
endmodule


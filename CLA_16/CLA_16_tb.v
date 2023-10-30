`timescale 1ns/1ns
`include "CLA_16.v"
module tb_CLA_16();
    reg[15:0] X,Y;
    reg Cin=0;
    integer j;
    initial begin
        for(j=0;j<15;j++)begin
            X=j;
            Y=16'hDDDD-j;
            #100;
        end
    end

    CLA_16 data(
        .X(X),
        .Y(Y),
        .Cin(Cin)
    );
    initial begin
        $dumpfile("CLA_16.vcd");
        $dumpvars(0,tb_CLA_16);
        #10000 $finish;
    end
endmodule
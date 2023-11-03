`timescale 1ns/1ns
`include "CLA_32.v"

module tb_CLA_32();
    reg[31:0] X,Y;
    reg Cin=0;
    integer j;
    initial begin
        for(j=0;j<100;j++)begin
            X=j;
            Y=16'hF-j;
            #100;
        end
    end

    CLA_32 data(
        .X(X),
        .Y(Y),
        .Cin(Cin)
    );
    initial begin
        $dumpfile("CLA_32.vcd");
        $dumpvars(0,tb_CLA_32);
        #10000 $finish;
    end
endmodule
`timescale 1ns/1ns
`include "ENC8T3I.v"

module tb_ENC8T3I();
    reg[7:0] I;
    integer j=0;

    initial begin
        for(j=0;j<512;j=j+1)begin
            I=j;
            #5;
        end
    end

    ENC8T3I data(
        .I(I)
    );

    ENC8T3 data2(
        .I(I)
    );

    initial begin
        $dumpfile("ENC8T3I.vcd");
        $dumpvars(0,tb_ENC8T3I);
        #10000 $finish;
    end
endmodule
`timescale 1ns/1ns
`include"CAL_4.v"
module tb_CAL_4();
    reg[3:0] X,Y;
    reg Cin=0;
    integer j;
    initial begin
        for(j=0;j<15;j++)begin
            X=j;
            Y=16'hF-2*j;
            #100;
        end
    end

    CAL_4 data(
        .X(X),
        .Y(Y),
        .Cin(Cin)
    );
    initial begin
        $dumpfile("CAL_4.vcd");
        $dumpvars(0,tb_CAL_4);
        #10000 $finish;
    end
endmodule
`timescale 1ns/1ns
`include "ADDSUB_32.v"
module tb_ADDSUB_32();
    reg [31:0] X,Y;
    reg Sub;
    wire [31:0] S;
    wire Cout;
    
    initial begin
      X = 136;
      Y = 17;
      Sub = 1;
      #20;
      X = 32'hFFFFFFFF;
      Y = 32'hFFFFFFFE;
      Sub = 1;
    end

    ADDSUB_32 data( 
        .X(X), 
        .Y(Y), 
        .Sub(Sub), 
        .S(S), 
        .Cout(Cout)
    );
    initial begin
      $dumpfile("ADDSUB_32.vcd");
      $dumpvars(0,tb_ADDSUB_32);
      #10000 $finish;
    end
endmodule
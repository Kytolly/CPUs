`timescale 1ns/1ns
`include "ADDSUB_16.v"

module tb_ADDSUB_16;
    reg [15:0] X,Y;
    reg Sub;
    wire [15:0] S;
    wire Cout;
    initial begin
      X = 136;
      Y = 17;
      Sub = 1;
      
      #20;
      X = 'b1111111111111111;
      Y = 'b1111111111111110;
      Sub = 1;
    end

    ADDSUB_16 data( 
        .X(X), 
        .Y(Y), 
        .Sub(Sub), 
        .S(S), 
        .Cout(Cout)
    );
    initial begin
      $dumpfile("ADDSUB_16.vcd");
      $dumpvars(0,tb_ADDSUB_16);
      #10000 $finish;
    end
endmodule
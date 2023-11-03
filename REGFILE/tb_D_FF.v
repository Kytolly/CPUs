`include "D_FF.v"
`timescale 1ns/1ns

module tb_D_FF();
    reg D,Clk;
    wire Q,Qn;

    always #30 Clk = ~Clk;
        initial begin
            Clk = 0;
            D = 1;
            #50;
            D = 0;
            #50;
            D = 1;
        end

    D_FF D_FF_test(
        .D(D),
        .Clk(Clk),
        .Q(Q),
        .Qn(Qn)
    );
    initial begin
      $dumpfile("D_FF.vcd");
      $dumpvars(0,tb_D_FF);
      #10000 $finish;
    end
 endmodule
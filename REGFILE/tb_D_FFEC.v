`include "D_FFEC.v"
`timescale 1ns/1ns

module tb_D_FFEC();
    reg  D,Clk,En,Clrn;
    wire Q,Qn;
    
    always #30 Clk = ~Clk;
        
        initial begin;
            Clk = 0;
        
            D = 1;
            En = 1;
            Clrn = 1;
            #40;
            
            D = 0;
            En = 1;
            Clrn = 1;
            #40;
            
            En = 1;
            Clrn = 1;
            #40;
            
            Clrn = 0;
        end
    
    D_FFEC data(
        .D(D),
        .Clk(Clk),
        .Q(Q),
        .En(En),
        .Clrn(Clrn),
        .Qn(Qn)
    );
    initial begin
      $dumpfile("D_FFEC.vcd");
      $dumpvars(0,tb_D_FFEC);
      #10000 $finish;
    end
endmodule
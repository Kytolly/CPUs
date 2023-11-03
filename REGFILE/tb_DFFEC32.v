`include "D_FFEC32.v"
`timescale 1ns/1ns
module tb_D_FFEC32();
    reg [31:0]D;
    reg Clk, En, Clrn;
    wire [31:0] Q;
    wire [31:0]Qn;


    always #20 Clk = ~Clk;

    // initial begin
    //         Clk = 0;
    //         Clrn = 1;
    //         En = 1;
    //         D = 'b00001111000011110000111100001111;
            
    //         #40;
              
    //         D = 'b11110000111100001111000011110000;
            
    //         #40;
            
    //         D = 'b00110011001100110011001100110011;
            
    //         #40;
            
    //         D = 'b11001100110011001100110011001100;
            
    //         end
        initial begin
            Clk = 0;
            Clrn = 1;
            En = 1;
            D = 'b00001111000011110000111100001111;
            #30;
            D = 'b11110000111100001111000011110000;
            #50;
            D = 'b00110011001100110011001100110011;
            #40;
            D = 'b11001100110011001100110011001100;  
        end
    
    D_FFEC32 data(
            .D(D),
            .Clk(Clk),
            .En(En),
            .Clrn(Clrn),
            .Q(Q),
            .Qn(Qn)
    );
    
    initial begin
      $dumpfile("D_FFEC32.vcd");
      $dumpvars(0,tb_D_FFEC32);
      #10000 $finish;
    end
endmodule
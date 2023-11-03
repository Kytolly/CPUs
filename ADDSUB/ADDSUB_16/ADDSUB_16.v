`ifndef ADDSUB_16_V
`define ADDSUB_16_V

//`include "../../CLA/CLA_16/CLA_16.v"使用相对路径打不开二级相对路径，这里重新封装一个模块
`include "CLA/CLA_4/CLA_4.v"
module cla_16 (
    input [15:0]X,
    input [15:0]Y,
    input Cin,
    output [15:0] S,
    output Cout
);
    wire Cout0, Cout1, Cout2;
    CLA_4 add0 (X[3:0], Y[3:0], Cin, S[3:0], Cout0);
    CLA_4 add1 (X[7:4], Y[7:4], Cout0, S[7:4], Cout1);
    CLA_4 add2 (X[11:8], Y[11:8], Cout1, S[11:8], Cout2);
    CLA_4 add3 (X[15:12], Y[15:12], Cout2, S[15:12], Cout);
endmodule

module ADDSUB_16 (X, Y, Sub, S, Cout);
   input [15:0] X, Y;
   input Sub;
   output [15:0] S;
   output Cout;
   cla_16 adder0 (X, Y^{16{Sub}}, Sub, S, Cout);
endmodule
`endif
`ifndef CLA_32_V
`define CLA_32_V

`include "CLA/CLA_16/CLA_16.v"
module CLA_32 (
    input [31:0]X,Y,
    input Cin,
    output [31:0] S,
    output Cout
);
    wire Cout0;
    CLA_16 add0(X[15:0],Y[15:0],Cin,S[15:0],Cout0);
    CLA_16 add1(X[31:16],Y[31:16],Cout0,S[31:16],Cout);
endmodule

`endif 



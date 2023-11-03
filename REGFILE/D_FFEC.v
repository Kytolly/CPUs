`ifndef D_FFEC_V
`define D_FFEC_V

`include "REGFILE/D_FF.v"
module D_FFEC (
    input D,
    input Clk,
    input En,
    input Clrn,
    output Q,
    output Qn
);
    wire Y0, Y_C;
    assign Y0=(En==0)?Q:D;
    and i0 (Y_C, Y0, Clrn);
    D_FF d0 (Y_C, Clk, Q, Qn); 
endmodule
`endif
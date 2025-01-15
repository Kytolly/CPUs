`include "D_Latch.v"

`ifndef D_FF_V
`define D_FF_V

module D_FF (
    input D,
    input Clk,
    output Q,
    output Qn
);
    wire Clkn, Q0, Qn0;
    not i0 (Clkn, Clk);
    D_Latch d0 (D, Clkn, Q0, Qn0); //主锁存器
    D_Latch d1 (Q0, Clk, Q, Qn); //从锁存器
endmodule

`endif
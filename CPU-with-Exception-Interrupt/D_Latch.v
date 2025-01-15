`ifndef D_LATCH_V
`define D_LATCH_V

module D_Latch(
    input D,
    input En,
    output Q,
    output Qn
);
    wire Sn, Rn, Dn;
    not  i0 (Dn, D);
    nand i1 (Sn, D, En);
    nand i2 (Rn, En, Dn);
    nand i3 (Q, Sn, Qn);
    nand i4 (Qn, Q, Rn); 
endmodule

`endif
`ifndef MUX2X1_V
`define MUX2X1_V

module MUX2X1(
    input A,
    input B,
    input S,
    output Y
);//S高电平选择B，低电平选择A
    not i0(S_n,S);
    nand i1(AS,A,S_n);
    nand i2(BS,B,S);
    nand i3(Y,AS,BS);
endmodule

`endif

`ifndef EXT16T32_V
`define EXT16T32_V
module EXT16T32(
    input[15:0]X,
    input B,
    output[31:0] Y
);
    wire[31:0] E0,E1;
    wire[15:0] e={16{X[15]}};
    wire[15:0] z=0;
    assign E0 = {z, X};
    assign E1 = {e, X};
    assign Y=(B==0)?E0:E1;
    //MUX2X32 i(E0, E1, B, Y);

endmodule
`endif
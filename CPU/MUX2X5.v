`ifndef MUX2X5_V
`define MUX2X5_V

module MUX2X5(
    input[4:0] A0,A1,
    input En,
    output[4:0] Y
);
    assign Y=(En==0)?A0:A1;
endmodule

`endif
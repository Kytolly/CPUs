`ifndef CPT4_V
`define CPT4_V
module CPT4(
    input [3:0]A,
    input [3:0]B,
    output Y
);
    xor x0(Y0,A[0],B[0]);
    xor x1(Y1,A[1],B[1]);
    xor x2(Y2,A[2],B[2]);
    xor x3(Y3,A[3],B[3]);
    nor n1(Y,Y0,Y1,Y2,Y3);
endmodule
`endif
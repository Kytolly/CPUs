`include "MUX2X32.v"

`ifndef SHIFTER_32_V
`define SHIFTER_32_V

module SHIFTER_32(
    input[31:0] X,
    input[4:0] Sa,
    input Arith,
    input Right,
    output[31:0] Sh
);
    wire [31:0] T4, S4, T3, S3, T2, S2, T1, S1, T0;
    wire a = X[31] & Arith;//结合符号位和拓展方式来看要拓展的字段
    wire [15:0] e = {16{a}};//拓展的位数
    parameter z = 16'h0000;
    wire [31:0] L1u, L1d, L2u, L2d, L3u, L3d, L4u, L4d, L5u, L5d;

    //第一级多路器
    assign L1u = {X[15:0] ,z};//左移16位
    assign L1d = {e, X[31:16] };//右移16位
    MUX2X32 M1l (L1u, L1d, Right, T4);
    MUX2X32 M1r (X, T4, Sa[4], S4); 

    //第二级多路器
    assign L2u = {S4[23:0] ,z[7:0]};//左移8位
    assign L2d = {e[7:0], S4[31:8] };//右移8位
    MUX2X32 M2l (L2u, L2d, Right, T3);
    MUX2X32 M2r (S4,T3, Sa[3], S3); 

    //第三级多路器
    assign L3u = {S3[27:0] ,z[3:0]};//左移4位
    assign L3d = {e[3:0], S3[31:4] };//右移4位
    MUX2X32 M3l (L3u, L3d, Right, T2);
    MUX2X32 M3r (S3,T2, Sa[2], S2);

    //第四级多路器
    assign L4u = {S2[29:0] ,z[1:0]};//左移4位
    assign L4d = {e[1:0], S2[31:2] };//右移4位
    MUX2X32 M4l (L4u, L4d, Right, T1);
    MUX2X32 M4r (S2,T1, Sa[1], S1);

    //第五级多路器
    assign L5u = {S1[30:0] ,z[0:0]};//左移4位
    assign L5d = {e[0:0], S1[31:1] };//右移4位
    MUX2X32 M5l (L5u, L5d, Right, T0);
    MUX2X32 M5r (S1,T0, Sa[0], Sh);

endmodule

`endif
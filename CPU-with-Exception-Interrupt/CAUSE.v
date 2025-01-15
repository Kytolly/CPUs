`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/27 23:15:40
// Design Name: 
// Module Name: CAUSE
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module CAUSE(
    input[31:0] Cause,
    input[31:0] Qb,
    input Mtc0,
    input Clk,
    input Wcau,
    input Clrn,
    output[31:0] cau
);
    wire[31:0] D;
    wire[31:0] caun;
    MUX2X32 mux(Cause,Qb,Mtc0,D);
    D_FFEC32 cause(D,Clk,Wcau,Clrn,cau,caun);
endmodule
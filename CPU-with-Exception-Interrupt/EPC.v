`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/27 23:17:25
// Design Name: 
// Module Name: EPC
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


module EPC(
    input[31:0] PC_now,
    input[31:0] PC_next,
    input[31:0] Qb,
    input Inta,
    input Mtc0,
    input Wepc,
    input Clk,
    input Clrn,
    output[31:0] epc
);
    wire[31:0] tmp;
    wire[31:0] D;
    wire[31:0] epcn;
    MUX2X32 mux1(PC_now,PC_next,Inta,tmp);
    MUX2X32 mux2(tmp,Qb,Mtc0,D);
    D_FFEC32 epcreg(D,Clk,Wepc,Clrn,epc,epcn);
endmodule

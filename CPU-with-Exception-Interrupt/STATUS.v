`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/27 23:16:12
// Design Name: 
// Module Name: STATUS
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


module STATUS(
    input[31:0] Qb,
    input Clk,
    input Wsta,
    input Clrn,
    output[31:0] sta
);
    wire[31:0] stan;
    D_FFEC32 status(Qb,Clk,Wsta,Clrn,sta,stan);
endmodule

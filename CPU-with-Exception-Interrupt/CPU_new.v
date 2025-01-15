`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/27 23:26:40
// Design Name: 
// Module Name: AbendCPU
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


module AbendCPU(
    input Clk,
    input Clrn ,
    input Intr,
    output Inta
);
    wire[31:0] Inst;
    wire[31:0] Dread;
    wire[31:0] Iaddr;
    wire[31:0] Daddr;
    wire[31:0] Dwrite;
    wire Wmem;
    
    CPU2 cpu(Clk,Clrn,Intr,Inst,Dread,Iaddr,Daddr,Dwrite,Wmem,Inta);
    AbendINSTMEM instmem(Iaddr,Inst);
    DATAMEM datamem(Daddr,Dwrite,Clk,Wmem,Dread);

endmodule
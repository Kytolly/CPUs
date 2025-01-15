`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/24 17:29:55
// Design Name: 
// Module Name: SingleCycleCPU
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


module SingleCycleCPU(
    input Clk,//时钟信号
    input Clrn //清零信号
);
    wire[31:0] Inst;//指令读入端口,来自INSTMEM
    wire[31:0] Dread;//数据读入端口，来自DATAMEM

    wire[31:0] Iaddr;//指令地址输出端口，送入INSTMEM
    wire[31:0] Daddr;//数据地址输出端口，送入DATAMEM
    wire[31:0] Dwrite;//数据输出端口，送入DATAMEM
    wire Wmem;//数据输入的写使能端口，送入DATAMEM
    
    CPU1 cpu(Clk,Clrn,Inst,Dread,Iaddr,Daddr,Dwrite,Wmem);
    INSTMEM instmem(Iaddr,Inst);
    DATAMEM datamem(Daddr,Dwrite,Clk,Wmem,Dread);


endmodule

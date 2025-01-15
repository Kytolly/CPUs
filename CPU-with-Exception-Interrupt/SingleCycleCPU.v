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
    input Clk,//ʱ���ź�
    input Clrn //�����ź�
);
    wire[31:0] Inst;//ָ�����˿�,����INSTMEM
    wire[31:0] Dread;//���ݶ���˿ڣ�����DATAMEM

    wire[31:0] Iaddr;//ָ���ַ����˿ڣ�����INSTMEM
    wire[31:0] Daddr;//���ݵ�ַ����˿ڣ�����DATAMEM
    wire[31:0] Dwrite;//��������˿ڣ�����DATAMEM
    wire Wmem;//���������дʹ�ܶ˿ڣ�����DATAMEM
    
    CPU1 cpu(Clk,Clrn,Inst,Dread,Iaddr,Daddr,Dwrite,Wmem);
    INSTMEM instmem(Iaddr,Inst);
    DATAMEM datamem(Daddr,Dwrite,Clk,Wmem,Dread);


endmodule

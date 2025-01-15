`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/24 21:58:45
// Design Name: 
// Module Name: tb_SingleCycleCPU
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


module SingleCycleCPUTest;

   // Inputs
    reg Clk;
    reg Clrn;

    SingleCycleCPU uut (
        .Clk(Clk), 
        .Clrn(Clrn)
    );
    always #10 Clk = ~Clk;

    // ��ʼ�����ԣ������Ҫ�źţ�Ȼ��ʼ����
    initial begin
        // �Բ��ε���ʽ������е��ź�
        $dumpfile("SingleCycleCPUTestbench.vcd");
        $dumpvars(0, SingleCycleCPUTest);

        Clk = 0;
        Clrn = 0;

        #20;
        Clrn = 1;

        #1000;

        $finish;
    end

    // �����������Ӷ���ļ�����������ض��ź�
    // ���߼������ڼ��źŵ��ض�״̬ 
    
    // ��� PC �Ĵ����ı仯
    always @(posedge Clk) begin
        $display("Time: %t | PC: %h", $time, uut.cpu.PC_now);
    end
endmodule

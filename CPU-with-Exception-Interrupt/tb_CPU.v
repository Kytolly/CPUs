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

    // 初始化测试，监控重要信号，然后开始测试
    initial begin
        // 以波形的形式监控所有的信号
        $dumpfile("SingleCycleCPUTestbench.vcd");
        $dumpvars(0, SingleCycleCPUTest);

        Clk = 0;
        Clrn = 0;

        #20;
        Clrn = 1;

        #1000;

        $finish;
    end

    // 在这里可以添加额外的监控语句来监控特定信号
    // 或者检查仿真期间信号的特定状态 
    
    // 检查 PC 寄存器的变化
    always @(posedge Clk) begin
        $display("Time: %t | PC: %h", $time, uut.cpu.PC_now);
    end
endmodule

`timescale 1ns/1ns        // 时间单位及=精度设置
`include "test.v"
module tb_decoder3_8();    
 
    reg [2:0] in;
 
    wire [7:0] out;
    // 初始化
    initial begin
        in <= 3'h0;
    end
    // 实现输入信号电平自动变化
    always #10 in <= {$random} % 8;
    initial begin
        $timeformat(-9, 0, "ns", 6);
        $monitor("time:%t in:%b out:%b",$time,in,out);
    end
    // 通过实例化模块把模拟输入信号传入功能模块中

    decoder3_8 decoder3_8_inist(
        .in(in),
        .out(out)
    );

    
    initial begin
    $dumpfile("test.vcd"); //生成的vcd文件名称
    $dumpvars(0, tb_decoder3_8); //tb模块名称
    #10000 $finish;
    end
endmodule

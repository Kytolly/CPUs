`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/24 17:11:24
// Design Name: 
// Module Name: PC
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

//module PC(
//    input Clk,
//    input En,
//    input [31:0] data_in,
//    output [31:0] data_out 
//);
    
//    reg [31:0] data = 32'b0;
//    always @(posedge Clk) begin
//        data<=data_in;       //enable,input
//    end
//    function [31:0] data_sub;
//        input En;
//        input [31:0] data;
//            case(En)
//                0:data_sub = data - 4;
//                default:data_sub = data;
//            endcase
//    endfunction
//    assign data_out = data_sub(En,data);
////    assign data_out = data;
//endmodule


module PC(
    input Clk,
    input Clrn,
    input[31:0] data_in,
    output[31:0] data_out
);
    wire En=1;
    wire[31:0] data_outn ;
    D_FFEC32 dff(data_in,Clk,En,Clrn,data_out,data_outn);
    //assign data_out=(En)?data_out-4:data_out;
endmodule
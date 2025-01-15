`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/28 12:39:20
// Design Name: 
// Module Name: tb_AbendCPU
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
module test(
    );
    reg Clk,Clrn,Intr;
	wire Inta;
AbendCPU uut(.Clk(Clk),.Clrn(Clrn),.Intr(Intr),.Inta(Inta));
initial
	begin
		Clk=0;
		Intr=0;
		Clrn=0;
		#10 Clrn=1;
		#20 Intr=1; 
		#160 Intr=0;
	end
always
 
begin

		#5 Clk = ~Clk;
end
endmodule
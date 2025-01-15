`include "MUX2X1.v"
`include "MUX2X5.v"
`include "MUX2X32.v"
`include "MUX32X32.v"
`include "EXT16T32.v"
`include "SHIFTER_32.v"
`include "D_FF.v"
`include "D_FFEC.v"
`include "D_FFEC32.v"
`include "DEC5T32E.v"
`include "REG32.v"
`include "REGFILE.v"
`include "ALU.v"

module CPUcore(
    input[31:0] Inst,
    input Clrn,
    input Clk,
    input[31:0] Dread,
    output[31:0] Iaddr,
    output Wmem,
    output[31:0] Daddr,
    output[31:0] Dwrite
);

    wire[5:0] Op=Inst[31:26];
    wire[5:0] func=Inst[5:0];
    wire[4:0] rs=Inst[25:21];
    wire[4:0] rt=Inst[20:16];
    wire[4:0] rd=Inst[15:11];
    wire[4:0] sa=Inst[10:6];
    wire[15:0] immediate=Inst[15:0];
    wire[15:0] addr=Inst[27:2];
    wire Z;
    wire[1:0] Pcsrc,Aluc;
    CONUNIT uu(Op,func,Z,Regrt,Se,Wreg,Aluqb,Wmem,REg2eg,Pcsrc,Aluc);   

    MUX2X5 mux1(rd,rt,Regrt,Wr);
    REGFILE reg1(rs, rt, D, Wr, Wreg, Clk, Clrn, Qa, Qb);

    EXT5T32E ext1(immediate,Se,Y0);
    MUX2X32 mux2(Y0,Qb,Aluqb,Y);
    SHIFTER sht(Y0,5'b00010,1,0,Sh);
    CLA_32 cl(sh,upd,0,S,over);

    wire[31:0] jmp={upd[31:27],addr};

    ALU al1(Qa,Y,Aluc,R,Z);

    MUX3X32 mux4(upd,sh,jmp,Pcsrc,Pc);
endmodule

module DATAMEM(
    input We,
    input[31:0] Addr,
    input[31:0] Din,
    input Clk,
    output[31:0] Dout
);
endmodule

module DATAMEM(Addr, Din, Clk, We, Dout);
    input [31:0] Addr, Din;
    input Clk, We;
    output [31:0] Dout;
    reg [31:0] Ram [31:0];
    
    // read data
    assign Dout = Ram [Addr[6:2]];
    // assign Dout = 32;
    always @(posedge Clk) begin
        if(We) Ram[Addr[6:2]] <= Din;
    end
    
    //write data
    integer i;
    initial begin
        for (i = 0;i < 32 ; i = i + 1)
            Ram[i] = i;
    end
endmodule


module CPU(
    input Clk,
    input Clrn,
    input[31:0] Inst,
    input[31:0] Dread,
    output[31:0] Iaddr,
    output[31:0] Daddr,
    output[31:0] Dwrite,
    output Wmem
);
    parameter En=1;

    PC pc(clk,En,Iaddr,Q);
    CLA_32 cla1(Iaddr,32'h0000-0004,0,upd);

    INSTMEM mod1(Iaddr,Inst);
    CPUcore mod2(Inst,Clrn,Clk,Dread,Iaddr,Wmem,Daddr,Dwrite);
    DATAMEM mod3(Wmem,Daddr,Dwrite,Clk,Dout);

    MUX2X32 mux5(Dout,R,Reg2reg,D);
endmodule
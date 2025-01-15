`include "REG32.v"
`include "MUX32X32.v"
`include "DEC5T32E.v"

`ifndef REGFILE_V
`define REGFILE_V

module REGFILE(Ra, Rb, D, Wr, We, Clk, Clrn, Qa, Qb);
    input [4:0] Ra, Rb, Wr;
    input [31:0] D;
    input We, Clk, Clrn;
    output [31:0] Qa, Qb;
    wire [31:0] Y_mux,
    Q0_re32,Q1_re32,Q2_re32,Q3_re32,Q4_re32,Q5_re32,Q6_re32,Q7_re32,
    Q8_re32,Q9_re32,Q10_re32,Q11_re32,Q12_re32,Q13_re32,Q14_re32,Q15_re32,
    Q16_re32,Q17_re32,Q18_re32,Q19_re32,Q20_re32,Q21_re32,Q22_re32,Q23_re32,
    Q24_re32,Q25_re32,Q26_re32,Q27_re32,Q28_re32,Q29_re32,Q30_re32,Q31_re32;
    DEC5T32E dec(Wr, We, Y_mux);
    REG32 reg32(D, Y_mux, Clk, Clrn, 
    Q31_re32,Q30_re32,Q29_re32,Q28_re32,Q27_re32,Q26_re32,Q25_re32,Q24_re32,
    Q23_re32,Q22_re32,Q21_re32,Q20_re32,Q19_re32,Q18_re32,Q17_re32,Q16_re32,
    Q15_re32,Q14_re32,Q13_re32,Q12_re32,Q11_re32,Q10_re32,Q9_re32,Q8_re32,
    Q7_re32,Q6_re32,Q5_re32,Q4_re32,Q3_re32,Q2_re32,Q1_re32,Q0_re32);
    MUX32X32 select1 (
    Q0_re32,Q1_re32,Q2_re32,Q3_re32,Q4_re32,Q5_re32,Q6_re32,Q7_re32,
    Q8_re32,Q9_re32,Q10_re32,Q11_re32,Q12_re32,Q13_re32,Q14_re32,Q15_re32,
    Q16_re32,Q17_re32,Q18_re32,Q19_re32,Q20_re32,Q21_re32,Q22_re32,Q23_re32,
    Q24_re32,Q25_re32,Q26_re32,Q27_re32,Q28_re32,Q29_re32,Q30_re32,Q31_re32,
    Ra,Qa
    );
    MUX32X32 select2 (
    Q0_re32,Q1_re32,Q2_re32,Q3_re32,Q4_re32,Q5_re32,Q6_re32,Q7_re32,
    Q8_re32,Q9_re32,Q10_re32,Q11_re32,Q12_re32,Q13_re32,Q14_re32,Q15_re32,
    Q16_re32,Q17_re32,Q18_re32,Q19_re32,Q20_re32,Q21_re32,Q22_re32,Q23_re32,
    Q24_re32,Q25_re32,Q26_re32,Q27_re32,Q28_re32,Q29_re32,Q30_re32,Q31_re32,
    Rb,Qb
    );
endmodule
`endif
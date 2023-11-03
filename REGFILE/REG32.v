`include "REGFILE/D_FFEC32.v"
module REG32(D, En, Clk, Clrn, 
Q31, Q30, Q29, Q28, Q27, Q26, Q25,
Q24, Q23, Q22, Q21, Q20, Q19, Q18, Q17,
Q16, Q15, Q14, Q13, Q12, Q11, Q10, Q9,
Q8, Q7, Q6, Q5, Q4, Q3, Q2, Q1, Q0);
    input [31:0] D, En;
    input Clk, Clrn;
    output [31:0] Q0;

    output [31:0] Q1;

    output [31:0] Q2;

    output [31:0] Q3;

    output [31:0] Q4;

    output [31:0] Q5;

    output [31:0] Q6;

    output [31:0] Q7;

    output [31:0] Q8;

    output [31:0] Q9;

    output [31:0] Q10;

    output [31:0] Q11;

    output [31:0] Q12;

    output [31:0] Q13;

    output [31:0] Q14;

    output [31:0] Q15;

    output [31:0] Q16;

    output [31:0] Q17;

    output [31:0] Q18;

    output [31:0] Q19;

    output [31:0] Q20;

    output [31:0] Q21;

    output [31:0] Q22;

    output [31:0] Q23;

    output [31:0] Q24;

    output [31:0] Q25;

    output [31:0] Q26;

    output [31:0] Q27;

    output [31:0] Q28;

    output [31:0] Q29;

    output [31:0] Q30;

    output [31:0] Q31;

    output [31:0] Qn1;

    output [31:0] Qn2;

    output [31:0] Qn3;

    output [31:0] Qn4;

    output [31:0] Qn5;

    output [31:0] Qn6;

    output [31:0] Qn7;

    output [31:0] Qn8;

    output [31:0] Qn9;

    output [31:0] Qn10;

    output [31:0] Qn11;

    output [31:0] Qn12;

    output [31:0] Qn13;

    output [31:0] Qn14;

    output [31:0] Qn15;

    output [31:0] Qn16;

    output [31:0] Qn17;

    output [31:0] Qn18;

    output [31:0] Qn19;

    output [31:0] Qn20;

    output [31:0] Qn21;

    output [31:0] Qn22;

    output [31:0] Qn23;

    output [31:0] Qn24;

    output [31:0] Qn25;

    output [31:0] Qn26;

    output [31:0] Qn27;

    output [31:0] Qn28;

    output [31:0] Qn29;

    output [31:0] Qn30;

    output [31:0] Qn31;

    D_FFEC32 q1(D,Clk,En[1],Clrn,Q1,Qn1);

    D_FFEC32 q2(D,Clk,En[2],Clrn,Q2,Qn2);

    D_FFEC32 q3(D,Clk,En[3],Clrn,Q3,Qn3);

    D_FFEC32 q4(D,Clk,En[4],Clrn,Q4,Qn4);

    D_FFEC32 q5(D,Clk,En[5],Clrn,Q5,Qn5);

    D_FFEC32 q6(D,Clk,En[6],Clrn,Q6,Qn6);

    D_FFEC32 q7(D,Clk,En[7],Clrn,Q7,Qn7);

    D_FFEC32 q8(D,Clk,En[8],Clrn,Q8,Qn8);

    D_FFEC32 q9(D,Clk,En[9],Clrn,Q9,Qn9);

    D_FFEC32 q10(D,Clk,En[10],Clrn,Q10,Qn10);

    D_FFEC32 q11(D,Clk,En[11],Clrn,Q11,Qn11);

    D_FFEC32 q12(D,Clk,En[12],Clrn,Q12,Qn12);

    D_FFEC32 q13(D,Clk,En[13],Clrn,Q13,Qn13);

    D_FFEC32 q14(D,Clk,En[14],Clrn,Q14,Qn14);

    D_FFEC32 q15(D,Clk,En[15],Clrn,Q15,Qn15);

    D_FFEC32 q16(D,Clk,En[16],Clrn,Q16,Qn16);

    D_FFEC32 q17(D,Clk,En[17],Clrn,Q17,Qn17);

    D_FFEC32 q18(D,Clk,En[18],Clrn,Q18,Qn18);

    D_FFEC32 q19(D,Clk,En[19],Clrn,Q19,Qn19);

    D_FFEC32 q20(D,Clk,En[20],Clrn,Q20,Qn20);

    D_FFEC32 q21(D,Clk,En[21],Clrn,Q21,Qn21);

    D_FFEC32 q22(D,Clk,En[22],Clrn,Q22,Qn22);

    D_FFEC32 q23(D,Clk,En[23],Clrn,Q23,Qn23);

    D_FFEC32 q24(D,Clk,En[24],Clrn,Q24,Qn24);

    D_FFEC32 q25(D,Clk,En[25],Clrn,Q25,Qn25);

    D_FFEC32 q26(D,Clk,En[26],Clrn,Q26,Qn26);

    D_FFEC32 q27(D,Clk,En[27],Clrn,Q27,Qn27);

    D_FFEC32 q28(D,Clk,En[28],Clrn,Q28,Qn28);

    D_FFEC32 q29(D,Clk,En[29],Clrn,Q29,Qn29);

    D_FFEC32 q30(D,Clk,En[30],Clrn,Q30,Qn30);

    D_FFEC32 q31(D,Clk,En[31],Clrn,Q31,Qn31);
    assign Q0 = 0;
endmodule
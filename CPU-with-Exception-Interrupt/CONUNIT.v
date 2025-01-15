`ifndef CONUNIT_V
`define CONUNIT_V
module CONUNIT(
    input[5:0] Op,
    input[5:0] Func,
    input Z,
    output Regrt,Se,Wreg,Aluqb,Wmem,REg2eg,
    output[1:0] Pcsrc,Aluc
);   
    wire R_type=~|Op;
    wire I_add=R_type &Func[5]& ~Func[3]&~Func[2]&~Func[1]&~Func[0];
    wire I_sub = R_type & Func[5] & ~Func[4] & ~Func[3] & ~Func[2] & Func[1] & ~Func[0];
    wire I_and = R_type & Func[5] & ~Func[4] & ~Func[3] & Func[2] & ~Func[1] & ~Func[0];
    wire I_or =  R_type & Func[5] & ~Func[4] & ~Func[3] & Func[2] & ~Func[1] & Func[0];
    wire I_addi = ~Op[5] & ~Op[4] & Op[3] & ~Op[2] & ~Op[1] & ~Op[0];
    wire I_andi = ~Op[5] & ~Op[4] & Op[3] & Op[2] & ~Op[1] & ~Op[0];
    wire I_ori = ~Op[5] & ~Op[4] & Op[3] & Op[2] & ~Op[1] & Op[0];
    wire I_lw = Op[5] & ~Op[4] & ~Op[3] & ~Op[2] & Op[1] & Op[0];
    wire I_sw = Op[5] & ~Op[4] & Op[3] & ~Op[2] & Op[1] & Op[0];
    wire I_beq = ~Op[5] & ~Op[4] & ~Op[3] & Op[2] & ~Op[1] & ~Op[0];
    wire I_bne = ~Op[5] & ~Op[4] & ~Op[3] & Op[2] & ~Op[1] & Op[0];
    wire I_J = ~Op[5] & ~Op[4] & ~Op[3] & ~Op[2] & Op[1] & ~Op[0];
    
    assign Regrt = I_addi | I_andi | I_ori | I_lw | I_sw | I_beq | I_bne | I_J;
    assign Se = I_addi | I_lw | I_sw | I_beq | I_bne;
    assign Wreg = I_add | I_sub | I_and | I_or | I_addi | I_andi | I_ori | I_lw;
    assign Aluqb = I_add | I_sub | I_and | I_or | I_beq | I_bne;
    assign Aluc[1] = I_and | I_or | I_andi | I_ori;
    assign Aluc[0] = I_sub | I_or | I_ori | I_beq | I_bne;
    assign Wmem = I_sw;
    assign Pcsrc[1] = (I_beq & Z) | (I_bne & ~Z) | I_J;
    assign Pcsrc[0] = I_J;
    assign Reg2reg = I_add | I_sub | I_and | I_or | I_addi | I_andi | I_ori | I_sw | I_beq | I_bne | I_J; 

endmodule

`endif
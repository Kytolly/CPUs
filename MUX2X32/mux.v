module MUX2X32(A,B,S,Y);
    input[31:0] A,B;
    input[0:0] S;
    output[31:0] Y;

        function[31:0] select;
            input[31:0] A,B;
            input[0:0] S;
                case(S) 
                    1'b1:select=A;
                    1'b0:select=B;
                endcase
        endfunction
    
    assign Y=select(A,B,S);
endmodule

module MUX2X1(
    input A,
    input B,
    input S,
    output Y
);
    not i0(S_n,S);
    nand i1(AS,A,S);
    nand i2(BS,B,S_n);
    nand i3(Y,AS,BS);
endmodule

module MUX2X32_another(
    input[31:0]A,
    input[31:0]B,
    input[0:0]S,
    output[31:0]Y
);
    MUX2X1 i0(
        .A(A[0]),
        .B(B[0]),
        .S(S),
        .Y(Y[0])
     ); 
    MUX2X1 i1(
       .A(A[1]),
        .B(B[1]),
        .S(S),
        .Y(Y[1])
     ); 
    MUX2X1 i2(
       .A(A[2]),
        .B(B[2]),
        .S(S),
        .Y(Y[2])
     ); 
    MUX2X1 i3(
       .A(A[3]),
        .B(B[3]),
        .S(S),
        .Y(Y[3])
     ); 
    MUX2X1 i4(
       .A(A[4]),
        .B(B[4]),
        .S(S),
        .Y(Y[4])
     ); 
    MUX2X1 i5(
       .A(A[5]),
        .B(B[5]),
        .S(S),
        .Y(Y[5])
     ); 
    MUX2X1 i6(
       .A(A[6]),
        .B(B[6]),
        .S(S),
        .Y(Y[6])
     ); 
    MUX2X1 i7(
       .A(A[7]),
        .B(B[7]),
        .S(S),
        .Y(Y[7])
     ); 
    MUX2X1 i8(
       .A(A[8]),
        .B(B[8]),
        .S(S),
        .Y(Y[8])
     ); 
    MUX2X1 i9(
       .A(A[9]),
        .B(B[9]),
        .S(S),
        .Y(Y[9])
     ); 
    MUX2X1 i10(
       .A(A[10]),
        .B(B[10]),
        .S(S),
        .Y(Y[10])
     ); 
    MUX2X1 i11(
       .A(A[11]),
        .B(B[11]),
        .S(S),
        .Y(Y[11])
     ); 
    MUX2X1 i12(
       .A(A[12]),
        .B(B[12]),
        .S(S),
        .Y(Y[12])
     ); 
    MUX2X1 i13(
       .A(A[13]),
        .B(B[13]),
        .S(S),
        .Y(Y[13])
     ); 
    MUX2X1 i14(
       .A(A[14]),
        .B(B[14]),
        .S(S),
        .Y(Y[14])
     ); 
    MUX2X1 i15(
       .A(A[15]),
        .B(B[15]),
        .S(S),
        .Y(Y[15])
     ); 
    MUX2X1 i16(
       .A(A[16]),
        .B(B[16]),
        .S(S),
        .Y(Y[16])
     ); 
    MUX2X1 i17(
       .A(A[17]),
        .B(B[17]),
        .S(S),
        .Y(Y[17])
     ); 
    MUX2X1 i18(
       .A(A[18]),
        .B(B[18]),
        .S(S),
        .Y(Y[18])
     ); 
    MUX2X1 i19(
       .A(A[19]),
        .B(B[19]),
        .S(S),
        .Y(Y[19])
     ); 
    MUX2X1 i20(
       .A(A[20]),
        .B(B[20]),
        .S(S),
        .Y(Y[20])
     ); 
    MUX2X1 i21(
       .A(A[21]),
        .B(B[21]),
        .S(S),
        .Y(Y[21])
     ); 
    MUX2X1 i22(
       .A(A[22]),
        .B(B[22]),
        .S(S),
        .Y(Y[22])
     ); 
    MUX2X1 i23(
       .A(A[23]),
        .B(B[23]),
        .S(S),
        .Y(Y[23])
     ); 
    MUX2X1 i24(
       .A(A[24]),
        .B(B[24]),
        .S(S),
        .Y(Y[24])
     ); 
    MUX2X1 i25(
       .A(A[25]),
        .B(B[25]),
        .S(S),
        .Y(Y[25])
     ); 
    MUX2X1 i26(
       .A(A[26]),
        .B(B[26]),
        .S(S),
        .Y(Y[26])
     ); 
    MUX2X1 i27(
       .A(A[27]),
        .B(B[27]),
        .S(S),
        .Y(Y[27])
     ); 
    MUX2X1 i28(
       .A(A[28]),
        .B(B[28]),
        .S(S),
        .Y(Y[28])
     ); 
    MUX2X1 i29(
       .A(A[29]),
        .B(B[29]),
        .S(S),
        .Y(Y[29])
     ); 
    MUX2X1 i30(
       .A(A[30]),
        .B(B[30]),
        .S(S),
        .Y(Y[30])
     ); 
    MUX2X1 i31(
       .A(A[31]),
        .B(B[31]),
        .S(S),
        .Y(Y[31])
     );        
endmodule
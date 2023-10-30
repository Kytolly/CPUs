module DEC2T4E(I0,I1,En,Y0,Y1,Y2,Y3);
    input I0,I1,En;
    output Y0,Y1,Y2,Y3;

    not i0(I0_n,I0);
    not i1(I1_n,I1);
    
    nor i2(YY0,I0,I1);
    and i3(Y0,YY0,En);

    nor i4(YY1,I0,I1_n);
    and i5(Y1,YY1,En);

    nor i6(YY2,I0_n,I1);
    and i7(Y2,YY2,En);

    nor i8(YY3,I0_n,I1_n);
    and i9(Y3,YY3,En);
endmodule
#include<stdio.h>
int main(){
    for(int j=0;j<32;j++){
        printf("    MUX2X1 i%d(\n       .A(A[%d]),\n        .B(B[%d]),\n        .S(S),\n        .Y(Y[%d])\n     ); \n",j,j,j,j);
    }
    return 0;
}
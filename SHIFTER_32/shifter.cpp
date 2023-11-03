#include<stdio.h>
int main(){
    for(int x=0;x<=1000;x++){
        int sa=(3*x+5)%32;
        int ar=x%2;
        int r=(2*x+1)%23%2;
        int y=((r==1)?(x>>sa):(x<<sa));
        printf("x=%8.0x  y=%8.0x\n",x,y);
    }
    return 0;
}
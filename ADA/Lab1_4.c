#include<stdio.h>
#include<time.h>
void main(){
    int x,y,i,mul = 1;
    clock_t start,end;
    double cpu_time_used;
    printf("Enter X(base):");
    scanf("%d",&x);
    printf("Enter Y(power):");
    scanf("%d",&y);

    start = clock();

    for(i = 0;i<y;i++){
        mul = mul*x;
    }

    end = clock();

    printf("%d",mul);
    printf("\n%f",cpu_time_used);
}
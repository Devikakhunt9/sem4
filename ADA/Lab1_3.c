#include<stdio.h>
#include<time.h>
//using recursion-----
int printDigit(int a){
    if(a==51 || a==0){
        return 50;
    }
    else{
        printf("\n%d",a);
        printDigit(a+1);     
    }
}
void main(){
    int i;
    clock_t start,end;
    double cpu_time_used;

    start = clock();

    for(i = 0;i<=49;i++){
        printf("%d ",i+1);
    }
    end = clock();
    cpu_time_used = ((double)(end-start)/CLOCKS_PER_SEC);
    printf("\n%f",cpu_time_used);

    printDigit(1);
}
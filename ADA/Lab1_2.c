#include<stdio.h>
#include<time.h>
//using Recursion-----
int sumofNDigit(int a){
    if(a == 0){
        return 0;
    }
    else{
        return a+sumofNDigit(a-1);
    }
}
void main(){
    int sum=0,n,i;
    clock_t start,end;
    double cpu_time_used;
    printf("Enter N:");
    scanf("%d",&n);

    start = clock();

    for(i = 0;i<=n;i++){
        sum = sum+i;
    }
    end = clock();
    printf("ANSEWR:%d",sum);
    cpu_time_used = ((double)(end - start)/CLOCKS_PER_SEC);
    printf("Time Used:%f",cpu_time_used);

    start = clock();
    printf("\nUsing Recursion:%d",sumofNDigit(n));
    end = clock();
    cpu_time_used = ((double)(end-start)/CLOCKS_PER_SEC);
    printf("\nUsing Recursion:%f",cpu_time_used);
}
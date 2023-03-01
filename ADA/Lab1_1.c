#include<stdio.h>
#include<time.h>
// using Recursion----
int factorial(int a){
    if(a == 0 || a == 1){
        return 1;
    }
    else{
        return a*factorial(a-1);
    }
}  



void main(){
    int a,mul = 1,i,ans;
    double cpu_time_used;
    printf("Enter N:");
    scanf("%d",&a);

    clock_t start,end;

    start = clock();
    for(i = 1;i<=a;i++){
        mul = mul*i;
    }

    end = clock();

    cpu_time_used = ((double)(end-start)/CLOCKS_PER_SEC);
    printf("Time Used:%f\n",cpu_time_used);
    printf("ANSWER:%d",mul);

    
    start = clock();
    printf("\nUsing Recursion:%d",factorial(a));
    end = clock();
    cpu_time_used = ((double)(end-start)/CLOCKS_PER_SEC);
    printf("\nUsing Recursion:%f",cpu_time_used);
}






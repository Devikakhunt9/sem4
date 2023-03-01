#include<stdio.h>
#include<time.h>
void main(){
    clock_t end,start;
    double cpu_time_used;
    int n,sum = 0;
    printf("Enter n:");
    scanf("%d",&n);

    start = clock();

    while(n!= 0 ){
        sum  = sum + (n%10);
        n = n/10;
    }
    printf("%d",sum);

    end = clock();

    cpu_time_used = ((double)(end-start)/CLOCKS_PER_SEC);
    printf("\n%f",cpu_time_used);
}
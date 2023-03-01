#include<stdio.h>
#include<time.h>

int fibbonacci(int a){
    if(a<2){
        return a;
    }
    else{
        // printf("%d")
        return fibbonacci(a-1)+fibbonacci(a-2);
    }
}

void main(){
    clock_t start,end;
    double cpu_time_used1,cpu_time_used2;


    int i,n,term1 = 0,term2 = 1,sum = 0;
    printf("Enter No of Terms:");
    scanf("%d",&n);

    start = clock();
    for(i = 0;i<n;i++){
        printf("%d ",sum);
        term1 = term2;
        term2 = sum;
        sum = term1+term2;
    }
    end = clock();

    start = clock();
    for(i = 0;i<n;i++){
        printf("%d ",fibbonacci(i));
    }
        
    end = clock();

    cpu_time_used1 = ((double)(end - start)/CLOCKS_PER_SEC);
    printf("Time Used(itrative):\n%f",cpu_time_used1);
     cpu_time_used2 = ((double)(end - start)/CLOCKS_PER_SEC);
    printf("Time Used(recursion):\n%f",cpu_time_used2);

}

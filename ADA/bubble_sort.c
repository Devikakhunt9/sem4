#include<stdio.h>
#include<time.h>
void main(){
     clock_t end,start;
    double cpu_time_used;
    int i = 0,j,a[100000],temp;

    FILE *fp1,*fp2,*fp3;
    fp1 = fopen("best.txt","w");
    fp3 = fopen("avg.text","w");
    fp2 = fopen("worst.txt","w");
    while(i<100000){
        fprintf(fp1,"%d\n",i+1);//bestcase
        fprintf(fp2,"%d\n",100000-i);//worstcase
        fprintf(fp3,"%d\n",rand());//avrageCAse
        i++;
    }
    start = clock();
    for(i = 0;i<10;i++){
        for(j = 0;j<10-i;j++){
            if(a[j]<a[j+1]){
                temp = a[j];
                a[j] = a[j+1];
                a[j+1] = temp;
            }            
        }
    }
    end = clock();
    for(i = 0;i<10;i++){
        printf("%d\n",a[i]);
    }
}
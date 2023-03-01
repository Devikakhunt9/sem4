#include<stdio.h>
#include<time.h>
int arrayReadFile(int a){
    if(fscanf(fp,"%d",&a[i])== EOF){
        return 0;
    }
    else{
        printf("%d\n",a[i])
        return arrayReadFile(fscanf(fp,"%d",&a[i]))
    }
}

void main(){
    clock_t      start,end;
    double cpu_time_used;

    int i = 0,a[100];
    FILE *fp;

    fp = fopen("abc.txt","r");
    start = clock();
    while(fscanf(fp,"%d",&a[i])!= EOF){
        printf("%d\n",a[i]);
        i++;
    }
    end = clock();
    cpu_time_used = ((double)(end-start)/CLOCKS_PER_SEC);

    printf("%f",cpu_time_used);
}
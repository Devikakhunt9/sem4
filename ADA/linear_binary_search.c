#include<stdio.h>
void main()
{
    int n,i=0,arr[100000];
    FILE *fp1,*fp2,*fp3;
    fp1 = fopen("best.txt","r");
    printf("Enter N:");
    scanf("%d",&n);
    while (n--)
    {   
        fscanf(fp1,"%d",&arr[i]);
        printf("%d",arr[i]);
        i++;
    }
    
    
    
}

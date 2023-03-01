#include<stdio.h>
void main(){
    int cost[10][10],visited[10] = {0};
    int i,j,n,ne = 1,min,a,u,b,v,mincost;
    printf("Enter No. of Nodes:");
    scanf("%d",&n);
    printf("Enter Adjuncy Matrix:");
    for (i=1;i<n;i++){
        for(j=1;j<n;j++){
            scanf("%d",&cost[i][j]);
            if(cost[i][j] == 0){
                cost[i][j] = 999;
            }
        }
    }
    visited[1] = 1;
    printf("\n");
    while(ne<n){

        for(i=1,min=999;i<n;i++){
			for(j=1;j<=n;j++){
				if(cost[i][j]<min){
					if(visited[i]!=0){
						min=cost[i][j];
						a=u=i;
						b=v=j;
					}
				}
			}
		}
    }
    if(visited[u]==0 || visited[v]==0){
			printf("\n Edge %d:(%d %d) cost:%d",ne++,a,b,min);
			mincost += min;
			visited[b]=1;
		}
		cost[a][b]=cost[b][a]=999;
        printf("\n Minimum cost %d \n",mincost);
}
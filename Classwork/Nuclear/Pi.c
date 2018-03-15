#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <math.h>

int main(){
	int counter=0,n=5000000,m=50;
	double x=0,y=0,total=0;
	double list[m];
	srand(time(NULL));
	double radius=.5;
	for (int j=0;j<m;j++){
		counter=0;
		for (int i=0;i<n;i++){
			x=-(double)rand()/(RAND_MAX+1)-.5;
			y=-(double)rand()/(RAND_MAX+1)-.5;
			if (pow(x,2)+pow(y,2)<=pow(radius,2)){
				counter++;
			}
		
		}
		list[j]=(double)counter/n*2*radius/pow(radius,2);
		printf("%f\n",list[j]);	
	}
	for (int l=0;l<m;l++){
		total+=list[l];
	}
	printf("FINAL: %f\n",total/m);
	return 0;

}

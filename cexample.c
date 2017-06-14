#include <stdio.h>
extern int SPARK_Search(int[], int);

int main(){
	int a[9] = { 0, 0, 1, 1, 3, 4, 5, 8, 8};
	int i = SPARK_Search(a,1);
	printf("%i\n", i);
	return 0;
}

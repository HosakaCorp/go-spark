package main

import "fmt"

/*
#cgo LDFLAGS: ${SRCDIR}/searchlib.a -lgnat
#include <string.h>
extern int SPARK_Search(int[], int);

int Search(int a[], int asize, int findme){
	int b[asize];
	memcpy(b, a, sizeof(b));
	return SPARK_Search(b,findme);
}
*/
import "C"

func main() {
	test := []C.int{0, 0, 1, 1, 3, 4, 5, 8, 9}
	c := C.Search(&test[0], (C.int)(len(test)), C.int(1))
	fmt.Printf("%d\n", c)
}

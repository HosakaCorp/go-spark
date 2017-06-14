JNK =\
	cexample.o\
	binary_search.o\
	binary_search.ali\
	goexample\
	searchlib.a

BIN = spark_test

all: prove go

c:
	gcc -c cexample.c
	gnatmake -c binary_search.adb
	gnatbind -Lsearchlib binary_search
	gnatlink binary_search.ali cexample.o -o $(BIN)

go:
	gnatmake -c binary_search.adb
	ar rc searchlib.a binary_search.o 
	go build -o $(BIN) goexample.go

prove:
	gnatprove -P test.gpr

clean:
	rm -f $(JNK) $(BIN)
	gnatprove -P test.gpr --clean

.PHONY:
	all clean prove go c

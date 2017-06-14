Go+Ada SPARK Example
====================
This is an example program for how to interface a Go program with Ada SPARK 2014 functions by using cgo as described [here](https://hosakacorp.net/go-spark.html). This uses the example binary_search SPARK example with only a single `pragma Export` added.

Usage
-----
In order to run this example you will need a working Go environment, Ada (with gnat libraries), and [Ada SPARK](http://libre.adacore.com/download/).

To run proofs, compile Ada libraries, and compile the Go binary run:
```
make
```
The proof output will be generated into `./gnatprove/gnatprove.out` and the `spark_test` go binary will be created from the `goexample.go` source.

This example includes `cexample.c` that can be used as an example to link Ada SPARK programs into C. Create the C `spark_test` binary with:
```
make c
```
Clean up with:
```
make clean
```

Workflow
--------
1. Export SPARK function to C: 
2. Prove Ada code: `gnatprove`
3. Compile Ada code to object file: `gnatmake`
4. Create static archive (you could use the .o directly at link time as in the C example): `ar rc`
5. Compile Go: `go build`

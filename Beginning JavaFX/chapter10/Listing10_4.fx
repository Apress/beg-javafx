
package examples.chapter10;

// Listing 10-4. Sequence nesting

var numSeq1 : Integer[] = [1,2,3];
var numseq2 : Integer[] = [6,7,8,9,10];
var numSeq3 : Integer[] = [ numSeq1 , 4,5, numseq2 ];
println(numSeq1);    // [ 1, 2, 3 ]
println(numseq2);    // [ 6, 7, 8, 9, 10 ]
println(numSeq3);    // [ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 ]

/*
output
-------
[ 1, 2, 3 ]
[ 6, 7, 8, 9, 10 ]
[ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 ]

*/
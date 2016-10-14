
package examples.chapter10;

// Listing 10-15. Binding the sequence values to the range expression

var num = 5;
var seq1 : Integer[] = bind [1..num];
println(seq1);    // [ 1,2,3,4,5 ]
num = 10;
println(seq1);    // [ 1,2,3,4,5,6,7,8,9,10 ]
num = 6;
println(seq1);   // [ 1,2,3,4,5,6 ]

/*
output
------
[ 1, 2, 3, 4, 5 ]
[ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 ]
[ 1, 2, 3, 4, 5, 6 ]
*/
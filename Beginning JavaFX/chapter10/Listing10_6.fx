
package examples.chapter10;

// Listing 10-6. Creating a sequence that excludes the end value of the range expression

var intSeq  : Integer[] = [1..< 10];
println(intSeq ); // output [ 1, 2, 3, 4, 5, 6, 7, 8, 9 ]
var intSeq1 : Integer[] = [0..< 90 step 10];
println(intSeq1); // output [ 0, 10, 20, 30, 40, 50, 60, 70, 80 ]

/*
output
------
[ 1, 2, 3, 4, 5, 6, 7, 8, 9 ]
[ 0, 10, 20, 30, 40, 50, 60, 70, 80 ]

*/

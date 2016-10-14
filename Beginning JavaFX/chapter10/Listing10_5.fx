
package examples.chapter10;

//  Listing 10-5 . Creating sequences using range expressions

var intSeq : Integer[] = [1..10]; // default step positive 1
println(intSeq );    // [ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 ]
var intSeq1 : Integer[] = [0..100 step 10]; // step  10
println(intSeq1);    // [ 0, 10, 20, 30, 40, 50, 60, 70, 80, 90, 100 ]
var emptySeq : Integer[] = [100..0];  //empty sequence, since step is missing
println(emptySeq);    // [ ]
var intSeq2 : Integer[] = [100..0 step -10 ];
println(intSeq2);    // [ 100, 90, 80, 70, 60, 50, 40, 30, 20, 10, 0 ]
var numSeq : Number [] = [0.5 .. 5.0 step 0.5];  //  number sequence
println(numSeq);    // [ 0.5, 1.0, 1.5, 2.0, 2.5, 3.0, 3.5, 4.0, 4.5, 5.0 ]

/*
output
------
[ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 ]
[ 0, 10, 20, 30, 40, 50, 60, 70, 80, 90, 100 ]
[ ]
[ 100, 90, 80, 70, 60, 50, 40, 30, 20, 10, 0 ]
[ 0.5, 1.0, 1.5, 2.0, 2.5, 3.0, 3.5, 4.0, 4.5, 5.0 ]

*/
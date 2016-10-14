
package examples.chapter10;

// Listing 10-8. Creating a new sequence from an existing one using predicates

var integerSequence : Integer[] = [1..10 ];
println(integerSequence);    // [ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 ]
var subSequence1 = integerSequence[ n | n > 5 ];
println(subSequence1);        // [ 6, 7, 8, 9, 10 ]
var subSequence2 = integerSequence[ n | n < 5 ];
println(subSequence2);        // [ 1, 2, 3, 4 ]
var subSequence3 = integerSequence[ n | indexof n > 4 ];
println(subSequence3);        // [ 6, 7, 8, 9, 10 ]
var subSequence4 = integerSequence[ n | indexof n < 2 or indexof n > 7 ];
println(subSequence4);        // [ 1, 2, 9, 10 ]
var emptySequence = integerSequence[ n | n > 10 ];
println(emptySequence);    	// [ ]

/*
output
------
[ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 ]
[ 6, 7, 8, 9, 10 ]
[ 1, 2, 3, 4 ]
[ 6, 7, 8, 9, 10 ]
[ 1, 2, 9, 10 ]
[ ]

*/
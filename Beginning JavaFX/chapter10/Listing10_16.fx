
package examples.chapter10;

//  Listing 10-16. Binding applied between two sequences

var seq1  = [1..5];
println(seq1);        // [ 1, 2, 3, 4, 5 ]
var seq2  = bind seq1 with inverse;
println(seq2);          // [ 1, 2, 3, 4, 5 ]
insert 100 before seq1[3];
println(seq1);        // [ 1, 2, 3, 100, 4, 5 ]
println(seq2);        // [ 1, 2, 3, 100, 4, 5 ]
insert 555 into seq2;
println(seq1);        // [ 1, 2, 3, 100, 4, 5, 555 ]
println(seq2);        // [ 1, 2, 3, 100, 4, 5, 555 ]
delete 5 from seq1;
println(seq1);        // [ 1, 2, 3, 100, 4, 555 ]
println(seq2);        // [ 1, 2, 3, 100, 4, 555 ]

/*
output
------
[ 1, 2, 3, 4, 5 ]
[ 1, 2, 3, 4, 5 ]
[ 1, 2, 3, 100, 4, 5 ]
[ 1, 2, 3, 100, 4, 5 ]
[ 1, 2, 3, 100, 4, 5, 555 ]
[ 1, 2, 3, 100, 4, 5, 555 ]
[ 1, 2, 3, 100, 4, 555 ]
[ 1, 2, 3, 100, 4, 555 ]

*/

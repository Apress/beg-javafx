
package examples.chapter10;

//  Listing 10-10. Inserting a sequence as an element into a sequence

var num : Integer[] = [1..4];
var num1 : Integer[] = [5..10];
insert num1 after num[2];
println(num);         // [ 1, 2, 3, 5, 6, 7, 8, 9, 10, 4 ]

/*
output
------
[ 1, 2, 3, 5, 6, 7, 8, 9, 10, 4 ]

*/
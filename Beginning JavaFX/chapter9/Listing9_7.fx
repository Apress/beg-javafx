
package examples.chapter9;

// Listing 9-7. A bind with a for expression using a bound step value

var stepVal = 1;
var max = 20;
var seq = bind for (i in [0..max step stepVal] where i < max/2 )  i;
println(seq);
stepVal = 5;
println(seq);
stepVal = 8;
println(seq);
max = 41;
println(seq);

/*
output
------
[ 0, 1, 2, 3, 4, 5, 6, 7, 8, 9 ]
[ 0, 5 ]
[ 0, 8 ]
[ 0, 8, 16 ]

*/
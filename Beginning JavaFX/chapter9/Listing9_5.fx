
package examples.chapter9;

//Listing 9-5. A bind with a for expression

var min = 0;
var max = 5;
def seq = bind for (x in [min..max]) 2*x;
println(seq);
max = 10;
println(seq);
min = 5;
println(seq);

/*
output
------
[ 0, 2, 4, 6, 8, 10 ]
[ 0, 2, 4, 6, 8, 10, 12, 14, 16, 18, 20 ]
[ 10, 12, 14, 16, 18, 20 ]

*/
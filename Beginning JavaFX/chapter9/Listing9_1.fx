
package examples.chapter9;

//  Listing 9-1.A simple bind

var x = 0;
def y = bind x * x;
x = 10;
println(y); // 10*10 = 100
x = 5;
println(y); // 5*5 = 25

/*
output
------
100
25

*/
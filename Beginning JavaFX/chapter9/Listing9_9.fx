
package examples.chapter9;

//Listing 9-9. A bound block expression

var x = 10;
var y = 10;
var z = 0;

def sum = bind {
    x + y + z;
}
println(sum);
x = 20;
println(sum);

/*
output
------
20
30
*/
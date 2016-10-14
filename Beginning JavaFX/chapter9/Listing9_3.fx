
package examples.chapter9;

//Listing 9-3. Optimized re-evaluation of a bound expression

var x = 10;
var y = 20;
var z = 10;
var sum = bind addConstant() + z;
println(sum);
z = 30;
println(sum);

function addConstant() {
    println("function called");
    30; // This will be considered as the return value.
}

/*
output
------
40
60

*/
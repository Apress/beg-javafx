
package examples.chapter9;

// Listing 9-10. Binding a function
var x = 10;
var y = 20;
var z = bind sum (x, y);
println(z);
x = 20;
println(z);
y = 30;
println(z);

function sum(x: Integer, y: Integer) {
    println("added");
    x + y;
}

/*
output
-------
added
30
added
40
added
50

*/
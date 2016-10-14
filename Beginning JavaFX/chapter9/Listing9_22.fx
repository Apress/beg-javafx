
package examples.chapter9;

//  Listing 9-22. Eager binding

var x = 10;
var val = bind multiplyByTen(x) on replace {
        // Any code that may consume val, validate val
};
for (i in [1..4]) x ++;
println("val: {val}");

function multiplyByTen(y: Integer):Integer {
    println("function called {y}");
    y * 10;
}

/*
output
------
function called 10
function called 11
function called 12
function called 13
function called 14
val: 140

*/
package examples.chapter9;

//  Listing 9-21. Lazy binding

var x = 10;
var val = bind multiplyByTen(x);
for (i in [1..4]) x ++;
println("val: {val}");

function multiplyByTen(y: Integer):Integer {
    println("function called {y}");
    y * 10;
}

/*
output
------
function called 14
val: 140


*/

package examples.chapter9;

//Listing 9-12. A standard bind function

var name1 = "JavaFX";
var name2 = "Technology";
var filler = "Cool";

function concat(x: String, y: String) {
    "{x} {filler} {y}";
}

def s = bind concat(name1, name2);
println(s);
name1 = "Java";
println(s);
filler = "mature";
println(s);

/*
output
------
JavaFX Cool Technology
Java Cool Technology
Java Cool Technology


*/
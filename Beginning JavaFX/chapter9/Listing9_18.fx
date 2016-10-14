
package examples.chapter9;

// Listing 9-18. Bidirectional binding
var name = "JavaFX";
var name1 = bind name with inverse; // indicates bidirectional binding
println(name1);
name = "Java";
println(name1);
name1 = "C++";
println(name);
println(name1);


/*
output
------
JavaFX
Java
C++
C++

*/
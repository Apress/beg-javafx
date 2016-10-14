
package examples.chapter11;

//  Listing 11-8. BidirectionalBind.fx
var name:String;
var name1 = bind name with inverse;
name = "JavaFX";
println ("Name: {name}, Name1: {name1}");
name1 = "Java";
println ("Name: {name}, Name1: {name1}");

/*
output
------
Name: JavaFX, Name1: JavaFX
Name: Java, Name1: Java

*/
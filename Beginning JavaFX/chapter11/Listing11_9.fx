
package examples.chapter11;

//  Listing 11-9. BidirectionalBindUsingTrigger.fx
var name:String on replace {
    name1 = name;
}
var name1:String on replace {
    name = name1;
}
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
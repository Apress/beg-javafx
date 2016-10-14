
package examples.chapter11;

//  Listing 11-1. SimpleTrigger.fx

var name="Praveen" on replace {
    println("Name has changed");
    println("New Name: {name}");
}
name = "Lawrence";

/*
output
------
Name has changed
New Name: Praveen
Name has changed
New Name: Lawrence
*/
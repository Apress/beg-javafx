
package examples.chapter11;

//  Listing 11-2. SimpleTriggerWithoutInitialization.fx
var name on replace {
    println("Name has changed");
    println("New Name: {name}");
}
name = "Lawrence";

/*
output
------
Name has changed
New Name:
Name has changed
New Name: Lawrence

*/
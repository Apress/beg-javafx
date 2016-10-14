
package examples.chapter11;

//  Listing 11-4. TriggerVarNameSpace.fx
var oldName: String = "JavaFX";
var name = "Praveen" on replace oldName {
    println("Name has changed from old: {oldName} to new: {name}");
}
name = "Lawrence";
println("OLD NAME: {oldName}");

/*
output
------
Name has changed from old:  to new: Praveen
Name has changed from old: Praveen to new: Lawrence
OLD NAME: JavaFX
*/
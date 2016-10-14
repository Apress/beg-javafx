
package examples.chapter11;

var name = "Praveen" on replace oldName {
    println("Name has changed from old: {oldName} to new: {name}");
}
name = "Lawrence";

/*
output
------
Name has changed from old:  to new: Praveen
Name has changed from old: Praveen to new: Lawrence
*/

package examples.chapter11;

//  Listing 11-5. TriggerWithBind.fx
var w = 10;
var h = 10;
var d = 10;
var isCube = true;
var area = bind if (isCube) {w*h*d} else {w*h} on replace oldVal {
    println("Area Changed from: {oldVal} to {area}");
}
w = 20;
isCube = false;
d = 20;

/*

output
-------
Area Changed from: 0 to 1000
Area Changed from: 1000 to 2000
Area Changed from: 2000 to 200

*/
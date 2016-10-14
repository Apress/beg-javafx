
package examples.chapter11;

//  Listing 11-10. TriggerValidation.fx
var x: Number = 10;
var y: Number = 5 on replace oldVal {
    if (y <= 0) {
        y = oldVal;
        println("y value reset");
    }
}
var ratio = bind (x/y);
println(ratio);
y = 0;
println(ratio);

/*
output
------
2.0
y value reset
2.0

*/
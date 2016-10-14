
package examples.chapter9;

//  Listing 9-17. Binding immutable objects

class MyCircle {
    public-init var centerX: Number;
    public-init var centerY: Number;
    var radius: Number;

    init {
        println("Init Called");
    }
    override function toString() {
        "centerX: {centerX}, centerY: {centerY}, radius: {radius}";
    }
}

var cx = 100.0;
var cy = 100.0;
var r = 50.0;

var circleObj = bind MyCircle {
    centerX: cx
    centerY: cy
    radius: r
}

println(circleObj);
cx = 200;
println(circleObj);
cy = 200;
println(circleObj);
r = 30;
println(circleObj);

/*

output
-------
Init Called
centerX: 100.0, centerY: 100.0, radius: 50.0
Init Called
centerX: 200.0, centerY: 100.0, radius: 50.0
Init Called
centerX: 200.0, centerY: 200.0, radius: 50.0
Init Called
centerX: 200.0, centerY: 200.0, radius: 30.0

*/
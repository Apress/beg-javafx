
package examples.chapter9;

// Listing 9-19. Bidirectional binding with objects
class XY {
    var x: Number;
    var y: Number;
    override function toString() { "x: {x}, y: {y}" }
}
def pt1 = XY {
    x: 10
    y: 10
}
def pt2 = XY {
    x: bind pt1.x with inverse
    y: 0
}

println(pt1);
pt1.x = 20;
println(pt2);
pt2.x = 30;
println(pt1);


/*
output
------
x: 10.0, y: 10.0
x: 20.0, y: 0.0
x: 30.0, y: 10.0


*/
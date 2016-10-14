
package examples.chapter8;

// Listing 8-1. Simple Inheritance Example

class Shape{
    var x : Number=10.0;
    var y : Number=10.0;
    function drawShape(){
            println("Draw the shape");
    }
}
class Circle extends Shape {
    var radius : Number;
    override function drawShape(){
            println("Draw circle at x={x} y={y} with radius={radius}");
    }
}
var circle : Circle = Circle{
    x : 40
    y : 50
    radius : 5
}
circle.drawShape();


/*

output
------
Draw circle at x=40.0 y=50.0 with radius=5.0

*/

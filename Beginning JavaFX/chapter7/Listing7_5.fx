
package examples.chapter7;

// Listing 7-5. Access across multiple classes in the script: ScriptPrivateClassDef3.fx

var PI: Number = 3.14;
class CustomCircle {
    var r: Number;
    var area: Number;
    function calculateArea() {
        area = PI * r * r;
    }
    function printArea() {
        calculateArea();
        println("Area: {area}");
    }
}

class ShapeBuilder {
    var circleRadius:Number = 10;
    var circle: CustomCircle = CustomCircle { r: bind circleRadius }
    init {
        circle.printArea();
        circleRadius = 25;
        circle.printArea();
    }
}
ShapeBuilder{};


/*
output
-------
Area: 314.0
Area: 1962.5

*/
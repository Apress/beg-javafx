
package examples.chapter7;

// Listing 7-4. Accessing class variables from within the script: ScriptPrivateClassDef2.fx

var PI: Number = 3.14;
class CustomCircle {
    var r: Number;
    var area: Number;
    init {
        calculateArea();
    }
    function calculateArea() {
        area = PI * r * r;
    }
    function printArea() {
        println("Area: {area}");
    }
}

var circle = CustomCircle { r: 25 };
circle.printArea();
println(circle.area);

/*
output
------
Area: 1962.5
1962.5

*/
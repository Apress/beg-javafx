
package examples.chapter7;

// Listing 7-3. Script-private access from within the class: ScriptPrivateWithClassDef.fx


var PI: Number = 3.14;
var area: Number;
function printArea() {
    println("Area: {area}");
}
class CustomCircle {
    var r: Number;
    init {
        area = calculateArea();
        printArea();
    }
    function calculateArea() {
        PI * r * r;
    }
}
CustomCircle { r: 25 }; //Anonymous Object Literal


/*
output
------
Area: 1962.5

*/
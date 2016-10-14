
// Listing 7-7. Importing the statics from AreaUtil: ShapeBuilder.fx

import AreaUtil.*;

class Circle {
    var radius: Number;
    var area = bind getAreaOfCircle(radius);
    var circumference = bind getCircumferenceOfCircle(radius);
}
class Sphere {
    var radius: Number;
    var surfaceArea: Number = bind getSurfaceAreaOfSphere(radius);
}
var circle = Circle {
    radius: 25
}
var sphere = Sphere {
    radius: 20
}
println("PI value: {PI}");
println("Circle Area: {circle.area}");
println("Circle Circumference: {circle.circumference}");
println("Sphere SurfaceArea: {sphere.surfaceArea}");


/*
output
------
PI value: 3.14
Circle Area: 1962.5
Circle Circumference: 157.0
Sphere SurfaceArea: 5024.0

*/

package examples.chapter6;

// Listing 6-9. Overloading a member function

class Circle {
    function draw(){
        println("Drawing a circle with the fixed x,y and the radius value");
    }

    function draw(radius : Number){
        println("Drawing a circle with the fixed x,y value with the given radius of {radius}");
    }

    function draw(x : Number , y : Number){
        println("Drawing a circle with the given x = {x } ,y = { y} value with default value radius");
    }

    function draw(x : Number , y : Number , radius : Number){
        println("Drawing a circle with the given x = {x } ,y = { y} value with the given radius of {radius}");
    }
}
var fo : Circle = Circle{}

fo.draw();
fo.draw(10.0);
fo.draw(35.0,55.5);
fo.draw(35.0 , 55.0 , 10.25);


/*
 output
 ------
Drawing a circle with the fixed x,y and the radius value
Drawing a circle with the fixed x,y value with the given radius of 10.0
Drawing a circle with the given x = 35.0 ,y = 55.5 value with default value radius
Drawing a circle with the given x = 35.0 ,y = 55.0 value with the given radius of 10.25

*/
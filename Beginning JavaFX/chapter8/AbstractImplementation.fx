
package examples.chapter8;

//package inheritance;
// Listing 8-9 – JavaFX class extending Abstract Java Class

class Rectangle extends Figure {
    override function area() : Number  {
        println("Overriden area function in Rectangle class");
        return dim1 * dim2;
    }
}

class Triangle extends Figure {
    override function area() : Number {
        println("Overriden area function in Triangle class");
        return dim1 * dim2 / 2.0;
    }
}

function run(){
    var rect = Rectangle{ }
    rect.dim1 = 5.0;
    rect.dim2 = 5.0;
    println(rect.area());

    var triangle  = Triangle{ }
    triangle.dim1 = 10.0;
    triangle.dim2 = 5.0;
    println(triangle.area());
}


/*
  output
  -----
Overriden area function in Rectangle class
25.0
Overriden area function in Triangle class
25.0

*/
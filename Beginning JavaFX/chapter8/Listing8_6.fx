
package examples.chapter8;

// Listing 8-6 – Deriving a mixin and a regular class together

class Base {
    var x : Integer;
    function showX() {
        println("x = {x}");
    }
}

mixin class MixBase  {
    var y : Integer;
    function showY( ){
        println("y = {y}");
    }
}

class SubClass extends MixBase , Base {
    var z : Integer;
    function showZ() {
        println("z = {z}");
    //super.showY(); - ILLEGAL: WILL NOT COMPILE
    //super.showX(); - LEGAL
    }
}

var obj = SubClass{
    x : 10;
    y : 20;
    z : 30;
}

obj.showX();  // x = 10
obj.showY();  // y = 20
obj.showZ();  // z = 30


/*
  output
  ------
x = 10
y = 20
z = 30

*/
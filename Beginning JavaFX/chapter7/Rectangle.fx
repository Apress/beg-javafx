
// Listing 7-20. A rectangle implementation: Rectangle.fx
// package com.foo;

public class Rectangle {
    public var x: Number;
    public var y: Number;
    public var width: Number;
    public var height: Number;
    var area: Number;
    
    public function draw() {
        computeArea();
        drawRectangle();
    }
    function computeArea() {
        area = width * height;
    }
    function drawRectangle() {
        println("Initializing the rect peer");
        println("Creating graphics surface");
        println("Rectangle Drawn");
    }
}
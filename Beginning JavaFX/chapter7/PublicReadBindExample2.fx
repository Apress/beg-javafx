
//  Listing 7-27. Public-read attributes in bind expressions: PublicReadBindExample2.fx\

//package com.jfx;
// import com.foo.*;
var obj = PublicReadBindExample1 {};
var y = bind obj.x;
println("Y Value: {y}");
obj.setX(200);
println("Y Value: {y}");


/*
Output
--------
Y Value: 100.0
Y Value: 200.0
*/
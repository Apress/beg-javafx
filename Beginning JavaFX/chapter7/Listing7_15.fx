
//  Listing 7-15. JavaFX script accessing the Java class - Main.fx
//package com.foo;
var jimpl = new JavaImpl();
println("X value: {jimpl.x}");
println("Technology: {jimpl.technology}");

/*
output
-------
Constructor called
X value: 10
Technology: JavaFX

*/
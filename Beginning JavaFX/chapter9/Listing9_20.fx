
package examples.chapter9;

//  Listing 9-20. Bidirectional multi-level binding

var x1 = 10;
var y1 = bind x1 with inverse;
var z1 = bind y1 with inverse;

println("x1: {x1} y1: {y1} z1: {z1}");
x1 = 20;
println("x1: {x1} y1: {y1} z1: {z1}");
y1 = 30;
println("x1: {x1} y1: {y1} z1: {z1}");
z1 = 40;
println("x1: {x1} y1: {y1} z1: {z1}");

/*
output
------
x1: 10 y1: 10 z1: 10
x1: 20 y1: 20 z1: 20
x1: 30 y1: 30 z1: 30
x1: 40 y1: 40 z1: 40

*/
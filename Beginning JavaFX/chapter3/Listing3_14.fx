/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package examples;

/**
 * @author lawkp
 */


var d = 4h;
var noOfHours = d.toHours();
var noOfMinutes = d.toMinutes();
var noOfSeconds = d.toSeconds();
var noOfMillis = d.toMillis();
var d1 = d.add(10m); // d1 = 250m
var d2 = d.sub(1h); // d2 = 3h


var d3 = d.mul(10); // d3 = 2400m
var d4 = d.div(10); // d4 = 24m

println("d = { d }");
println("d1 = { d1 }");
println("d2 = { d2 }");
println("d3 = { d3 }");
println("d4 = { d4 }");
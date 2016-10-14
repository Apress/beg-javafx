
//  Listing 7-23. A script that tightens loose expressions: ExampleWithRun.fx

public var pi : Number = 3.142;
public var radius : Number = 6;
function area_of_circle( ) {
    pi * radius * radius;
}
function run() {
    println("pi = {pi} , radius = {radius}");
    println("area of circle = {area_of_circle()}");
}


/*
output
------
pi = 3.142 , radius = 6.0
area of circle = 113.112

*/
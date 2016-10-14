
// Listing 7-29. Initializing public-init vars: PublicInitMain.fx

var pre1 = PublicInitExample1 {
    y: 100
    x: 20
}
println("X Value: {pre1.x}");
println("Y Value: {pre1.y}");
println("------------");
var pre2 = PublicInitExample1 {
    y: 100
}
println("X Value: {pre2.x}");
println("Y Value: {pre2.y}");


/*
output
------
X Value: 20
Y Value: 100
------------
X Value: 200
Y Value: 100

*/
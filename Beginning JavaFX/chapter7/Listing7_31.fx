
// Listing 7-31. Accessing public init outside the object literal: PublicInitMain.fx
// WARNING: This code will not compile
var pre1 = PublicInitExample1 {
    y: 100
    x: 20
}
println(pre1.x);
println(pre1.y);
// pre1.y = pre1.y + 100;

/*
Compile and run the scripts to see the following output.
Output
PublicInitMain.fx: y has script only (default) write access in PublicInitExample1
pre1.y = pre1.y + 100;
^
1 error

*/
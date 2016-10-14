
package examples.chapter9;

//  Listing 9-16. Class-level binding

class Cube {
    var x: Number;
    var y: Number;
    var z: Number;
    var area: Number = bind x * y * z;
}

var c1 = Cube {
    x: 10
    y: 10
    z: 10
}
var c2 = Cube {
    x: 2
    y: 2
    z: 2
}
println(c1.area);
println(c2.area);
c1.x = 11;
c2.y = 4;
println(c1.area);
println(c2.area);

/*

output
------
1000.0
8.0
1100.0
16.0

*/

package examples.chapter10;

//  Listing 10-7. Sequence slicing

var s1 = [0..8];    // [0,1,2,3,4,5,6,7,8]
var s2 = s1[4..];
println(s2);        // [4,5,6,7,8]
var s3 = s1[0..<];
println(s3);        // [0,1,2,3,4,5,6,7 ]

/*
output
------
[ 4, 5, 6, 7, 8 ]
[ 0, 1, 2, 3, 4, 5, 6, 7 ]

*/
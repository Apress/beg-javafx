
package examples.chapter10;

//  Listing 10-14. Binding an element of a sequence to a variable

var seq = [10, 20, 30];
var z = bind seq[1];    // z is bound to seq[1]
println(seq);        // [ 10,20,30 ]
println("z={ z }");    // z=20
insert 55 before seq[1];
println(seq);        // [10,55,20,30 ]
println(" z={ z }");    // z=55
seq[1] = 38;
println(seq);        //[10,38,20,30]
println(" z={ z }");    //z=38
delete seq[1];
println(seq);        // [10,20,30]
println(" z={ z }");    // z=20

/*
output
------
[ 10, 20, 30 ]
z=20
[ 10, 55, 20, 30 ]
 z=55
[ 10, 38, 20, 30 ]
 z=38
[ 10, 20, 30 ]
 z=20
 
*/

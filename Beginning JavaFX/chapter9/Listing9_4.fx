
package examples.chapter9;

//  Listing 9-4. A conditional bind

var mark = 50;
var status = bind if (mark >= 50) then "PASS" else "FAIL";
println(status);
mark = 30;
println(status);

/*
output
------
PASS
FAIL

*/
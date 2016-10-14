
package examples.chapter9;

// Listing 9-8. Functions in a bound for expression

var sum = bind for (i in [1..10] where i > 5 )  sumSeq([1..i]);

function sumSeq( seq : Integer[]):Integer {
    var sum = 0;
    for (num in seq) {sum = sum + num;}
    sum
}
println(sum);

/*
output
-------
[ 21, 28, 36, 45, 55 ]
*/
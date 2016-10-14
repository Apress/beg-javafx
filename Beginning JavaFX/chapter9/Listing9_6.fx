
package examples.chapter9;

//Listing 9-6. A bind with a for expression using indexof

var seq = [1..10];
def seq1 = bind for (x in seq) {
    x * (indexof x) + 2;
}
println(seq1);
insert 0 before seq[0];
println(seq1);


/*
output
-------
[ 2, 4, 8, 14, 22, 32, 44, 58, 74, 92 ]
[ 2, 3, 6, 11, 18, 27, 38, 51, 66, 83, 102 ]

*/

package examples.chapter10;

// Listing 10-1. Different ways of defining a sequence

var emptySequence : Integer[];
println(emptySequence);    // []

var intSequence : Integer[] = [2,4,6,8,10];
println(intSequence);        // [ 2, 4, 6, 8, 10 ]

var inferenceSequence = ["Praveen", 'Girish' ,"Cheran" , 'Rabi' , "Lawrence" ];
println(inferenceSequence);    // [ Praveen, Girish, Cheran, Rabi, Lawrence ]

/*
output
-----
[ ]
[ 2, 4, 6, 8, 10 ]
[ Praveen, Girish, Cheran, Rabi, Lawrence ]

*/
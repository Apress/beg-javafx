
package examples.chapter10;

// Listing 10-2. Using the sizeof operator

var emptySequence:Integer[];
println("sizeof emptySequence = {sizeof emptySequence }"); // sizeof emptySequence = 0

var inferenceSequence = ["Praveen",'Girish', "Cheran" , 'Rabi' , "Lawrence" ];
println("sizeof inferenceSequence = {sizeof inferenceSequence}"); // sizeof inferenceSequence = 5

/*
output
------
sizeof emptySequence = 0
sizeof inferenceSequence = 5
*/
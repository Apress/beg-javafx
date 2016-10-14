
package examples.chapter4;


// Listing 4-12. Example of a block expression

println( {
var sum = 0;
   var counter = 10;
   while (counter > 0) {
          sum += counter;
          --counter;
  }
   "Sum is {sum}"
} );


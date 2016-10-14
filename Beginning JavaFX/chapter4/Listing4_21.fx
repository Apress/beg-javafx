
package examples.chapter4;

// Listing 4-21. Example of using break within a while loop
var x = 0;
while (x <= 5.0) {
    x++;
    println(x);
    if (x > 2.5 ) {
        break;
    }
}

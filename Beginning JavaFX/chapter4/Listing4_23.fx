/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package examples.chapter4;


// Listing 4-23. Example of a continue expression

var notPrime = false;
for (x in [2..100]) {
    for (y in [2..(x-1)]) {
        if (x mod y == 0) {
            notPrime = true;
            break;
        }
    }
    if (notPrime) {
        notPrime = false;
                 continue;
    } else {
        print("{x} ");
    }
}

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package examples.chapter5;

// Listing 5-9. Example of a recursive function with multiple invocations

        function fibonacciFun(n:Integer):Integer {
        if (n<2) {
            return n
        }
        else {
             (fibonacciFun(n-1) + fibonacciFun(n-2));
         }
    }

    println(" fibonacci of 10 = { fibonacciFun(10) }");
    println(" fibonacci of 1 = { fibonacciFun(1) }");

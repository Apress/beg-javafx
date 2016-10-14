/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package examples.chapter5;

// Listing 5-8. Example of a recursive function

    function factorial( n : Integer ) : Integer{
       if( ( n==0) or ( n == 1 ) ) {
            return n;
        }
        else {
            return n * factorial(n - 1 );
        }
    }

    println("factorial of 5 = {factorial(5) }");
    var fact = factorial(8);
    println("factorial of 8 = {fact}");

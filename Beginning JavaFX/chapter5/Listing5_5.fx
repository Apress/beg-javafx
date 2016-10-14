/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package examples.chapter5;

// Listing 5-5. Example of a function that has arguments and a return value

    function functionExpression(a:Integer, b:Integer):Number {
       var x = a + b;
       var y = a - b;
       return squareOfNumber(x) / squareOfNumber (y);
   }
   function squareOfNumber(n:Integer): Number {
        n * n;
   }
   println("{ functionExpression(5,8) }");

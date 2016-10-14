/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package examples.chapter5;


//Listing 5-3. Example of a function with arguments but no return value

   function factorial( num : Integer) : Void {
       var i : Integer = 1;
       var fact : Integer = 1;
       while(i <= num ){
           fact = fact * i++;
       }
       println("factorial of {num} is {fact}");
   }
    var n2 : Integer = 6;
    factorial(5);
    factorial(n2);

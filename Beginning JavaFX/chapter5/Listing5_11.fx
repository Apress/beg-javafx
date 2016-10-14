/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package examples.chapter5;

// Listing 5-11. Example of a variable of type function with automatic type inference

    var fact = function (num : Integer )  {
        var i : Integer = 1;
        var fact : Integer = 1;
        while(i <= num ){
            fact = fact * i++;
        }
        return fact;
    }
    println("Factorial of 5 = { fact(5) } ");

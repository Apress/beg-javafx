/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package examples.chapter5;

//Listing 5-4. Example of a function without an argument but with a return value

   function getPI( ) {
        return 22.0/7.0;
    }

    function getOddsLessThanTen( ) {
        [1..10 step 2];
    }

    function printName() : String{
             "Jack and Jill";
    }

    var pi = getPI();
    println("pi value = {pi}");
    var nos : Integer [] = getOddsLessThanTen( );
    println(" Odd numbers = {nos}");
    println(printName());

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package examples.chapter5;


//Listing 5-7. Example of an overloaded function

   function fun() {
       println("Function Overloaded without any argument.");
   }
    function fun(a : Integer , b : Integer) {
       println("Function Overloaded with  Integer argument a ={ a } , b = {b}");
   }
   function fun(n : Number ) {
        println("Function Overloaded with  Number argument n = {n}");
    }

    fun();
    fun(5, 10);
    fun(22.0/7.0);
    fun(40);

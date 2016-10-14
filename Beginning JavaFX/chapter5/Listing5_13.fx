/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package examples.chapter5;

// Listing 5-13. Example that enforces addition of a run() function

    public  function areaOfCircle(radius :Number):Number {
       return  3.142 * radius * radius;
    }

    function run(){
        println("This is the entry point for JavaFX Scripting..!");
        println("Area of the circle = {areaOfCircle( 7) } " );
    }

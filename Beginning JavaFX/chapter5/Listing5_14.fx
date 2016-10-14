/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package examples.chapter5;

//  Listing 5-14. ModifiedRun.fx, an example of a function with command-line arguments

    function run (cmdLine : String[]){
        println("Printing Command-line arguments");
        for( arg in cmdLine ){
            println(arg);
        }
    }

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package examples.chapter5;

// Listing 5-6. Using a script-level variable

    var scriptLevelVar  : Number = 10;

    public  function simpleFunction(  ) {
        println("Accessing scriptLevelVar with in the simple function = {scriptLevelVar}");
        // modifing the value of scriptLevelVar
        scriptLevelVar = 45.34;
        println("Modified value of scriptLevelVar in simple function = {scriptLevelVar}");
    }

    function run (){
        println("Accessing the scriptLevelVar in run function \nscriptLevelVar = {scriptLevelVar}");
        simpleFunction(  ) ;
        scriptLevelVar++;
        println("Modified value in run function scriptLevelVar = {scriptLevelVar}");
    }

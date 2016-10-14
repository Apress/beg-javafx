
package examples.chapter6;

//Listing 6-4. A class definition that includes an init block

    class Distance {
       var feet : Integer = 1;    // default value is 1
       var inches : Number = 0.0;
       init {
            println("within init block..");
            println("Default value is overridden by object initialization");
            println("feet = {feet}  inches = {inches}");
            println("Overriding the default value printing the ");
            feet = 10;
            inches = 4.5;
            println("feet = {feet}  inches = {inches}");
        }

        function showdist() : Void {
            println("feet = {feet } inches = {inches } ");
        }
    }

    var dist1 : Distance = Distance {
        feet : 5
        inches : 10.5
    }
    println("calling the member function to print the value of data member");
    dist1.showdist() ;

/*
output
------
within init block..
Default value is overridden by object initialization
feet = 5  inches = 10.5
Overriding the default value printing the
feet = 10  inches = 4.5
calling the member function to print the value of data member
feet = 10 inches = 4.5

*/
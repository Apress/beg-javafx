
package examples.chapter6;

//Listing 6-5: Modifying the value of a data member outside the class

   class Distance {
        var feet : Integer = 1;    // default value is 1
        var inches : Number = 0.0;

        function showdist() : Void {
              println("feet = {feet } inches = {inches } ");
        }
    }

    var dist1 : Distance = Distance {  // creating the object and initializing it
        feet : 5
        inches : 10.5
    }
    println("dist1 object value");
    dist1.showdist() ;
     dist1.feet = 8;        // modifying the feet data member
    dist1.inches = 11.5;    // modifying the inches data member
    println("dist1 object value after changing the data member");
    dist1.showdist() ;


/*
output
------
dist1 object value
feet = 5 inches = 10.5
dist1 object value after changing the data member
feet = 8 inches = 11.5 
  
*/

package examples.chapter6;

// Listing 6-7. A non-member function accessing class objects

    class Distance {
          var feet : Integer = 0;
          var inches : Number = 0.0;
          function showdist() : Void {
          println("feet = {feet } inches = {inches } ");
        }
    } //  end class

    /*  Non-member function */
    function addDistance(dist1: Distance , dist2 : Distance): Distance {
        var feet : Integer = dist1.feet + dist2.feet;
        var inches : Number = dist1.inches + dist2.inches;
        if(inches >= 12.0 ) {
            feet++;
            inches -= 12.0;
        }
        return Distance{ feet : feet  inches : inches }
    }

    var dist1 : Distance = Distance {
        feet : 5
        inches : 10.5
    }
    var dist2 : Distance = Distance {
        feet : 7
        inches : 6.65
    }
    println("The value of the dist1 object ");
    dist1.showdist() ;
    println("The value of the dist2 object ");
    dist2.showdist() ;
    var dist3 = addDistance(dist1 , dist2);
    println("The value of the dist3 object ");
    dist3.showdist() ;

/*
 output
 ------
The value of the dist1 object
feet = 5 inches = 10.5
The value of the dist2 object
feet = 7 inches = 6.65
The value of the dist3 object
feet = 13 inches = 5.1499996 

*/
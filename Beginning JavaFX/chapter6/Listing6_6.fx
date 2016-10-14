package examples.chapter6;

// Listing 6-6. A member function that takes an object as its argument

    class Distance {
       var feet : Integer = 0;
       var inches : Number = 0.0;

        function showdist() : Void {
            println("feet = {feet } inches = {inches } ");
        }

        public function addDistance(tempDist1:Distance,tempDist2:Distance ) : Void {
            inches = tempDist1.inches + tempDist2.inches;
             if(inches >= 12.0 ) {
                feet++;
                inches -= 12.0;
             }
             feet  = feet + tempDist1.feet + tempDist2.feet;
        }
    }
    var dist1 : Distance = Distance {
        feet : 5
        inches : 10.5
    }
    var dist2 : Distance = Distance {
        feet : 7
        inches : 6.65
    }
    println("The value of dist1 object ");
    dist1.showdist() ;
    println("The value of dist2 object ");
    dist2.showdist() ;
    var dist3 = Distance {};
    dist3.addDistance(dist1 , dist2);
    println("The value of dist3 object ");
    dist3.showdist() ;


/*

output
------

The value of dist1 object
feet = 5 inches = 10.5
The value of dist2 object
feet = 7 inches = 6.65
The value of dist3 object
feet = 13 inches = 5.1499996

*/
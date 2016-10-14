
package examples.chapter9;

// Listing 9-2. Changing a bound expression from within a loop
var x = 100;
var y = bind x + 100;
for( a in [5..50 step 5]){
    x = a;
    println( "x={x}, y={y}");
}

/*
output
------
x=5, y=105
x=10, y=110
x=15, y=115
x=20, y=120
x=25, y=125
x=30, y=130
x=35, y=135
x=40, y=140
x=45, y=145
x=50, y=150
*/
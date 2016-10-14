
package examples.chapter9;

//Listing 9-11. Binding a Java function

import java.lang.Math;
var d = 0;
var x2 = bind Math.toRadians(d);

for( r in [0..360 step 60]) {
    d = r.intValue();
    println("d={d}, x2= {x2}");
}

/*
output
------
d=0, x2= 0.0
d=60, x2= 1.0471975511965976
d=120, x2= 2.0943951023931953
d=180, x2= 3.141592653589793
d=240, x2= 4.1887902047863905
d=300, x2= 5.235987755982989
d=360, x2= 6.283185307179586

*/
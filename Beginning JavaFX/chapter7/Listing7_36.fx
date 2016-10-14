// Listing 7-36. Accessing a protected class definition: Cup1.fx
//WARNING: This script will not compile

package com.jfxcutlery;
import com.cutlery.*;

class FXCup extends Cup {
    public override var material = "Ceramic";
}
var c2 = FXCup{};
println(c2.material);

/*
Compile and run the code to see the following output.
Output
Cup1.fx:4: com.cutlery.Cup has protected access in com.cutlery
class FXCup extends Cup {
^
Cup1.fx:8: cannot find symbol
symbol : variable material
location: class com.jfxcutlery.Cup1.fxCup
println(c2.material);
^
Cup1.fx:5: cannot find symbol
symbol : variable material
location: class com.jfxcutlery.Cup1.fxCup
public override var material = "Ceramic";
^
3 errors

*/


/* Listing 7-13. Application accessing package-level functionality through a public interface in Dessert.fx:
  Dinner.fx
  */

package com.foo.meal;
import com.foo.dessert.*;

var dessert = Desserts {
  //  item: "Pudding"
};
dessert.prepare();
//var cookDessert = CookDessert{}; - ERROR: Cannot be accessed


/*
output
-----
Baking item: Pudding for 10.0 min
Cooling item: Pudding for 5.0 min
Item Pudding is ready!!

*/
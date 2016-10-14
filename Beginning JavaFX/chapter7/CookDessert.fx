

// Listing 7-8. Implementation that offers package access function: CookDessert.fx

package com.foo.dessert;
package var bakeTime: Number;
package var coolingTime: Number;

package function cook(item: String) {
    println("Baking item: {item} for {bakeTime} min");
    println("Cooling item: {item} for {coolingTime} min");
    println("Item {item} is ready!!");
}


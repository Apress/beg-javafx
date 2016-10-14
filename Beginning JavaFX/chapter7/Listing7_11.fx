
//  Listing 7-11. Class definitions with package level access: CookDessert.fx

package com.foo.dessert;

package class CookDessert {
    package var bakeTime: Number;
    package var coolingTime: Number;
    
    package function cook(item: String) {
        println("Baking item: {item} for {bakeTime} min");
        println("Cooling item: {item} for {coolingTime} min");
        println("Item {item} is ready!!");
    }
}
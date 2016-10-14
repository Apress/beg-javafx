

// Listing 7-9. Public interface for accessing package level function in CookDessert: Desserts.fx

package com.foo.dessert;

public var item: String;

public function prepare() {
    if (item == "Cake") {
        var cake = CookDessert {};
        cake.bakeTime = 25;
        cake.coolingTime = 10;
        cake.cook ("Cake");
    } else if (item == "Pudding") {
        var pudding = CookDessert {};
        pudding.bakeTime = 10;
        pudding.coolingTime = 5;
        pudding.cook("Pudding");
    } else {
        println("Sorry!! Recipe not available yet!");
    }
}


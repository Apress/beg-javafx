
//  Listing 7-12. Public interface to package-level functionality in CookDessert: Desserts.fx

package com.foo.dessert;
public class Desserts {
    public var item: String;
    var cookDessert:CookDessert;
    public function prepare() {
        if (item == "Cake") {
            cookDessert = CookDessert {
                bakeTime: 25
                coolingTime: 10
            };
            cookDessert.cook ("Cake");
        } else if (item == "Pudding") {
            cookDessert = CookDessert {
                bakeTime: 10
                coolingTime: 5
            };
                cookDessert.cook("Pudding");
            } else {
                println("Sorry!! Recipe not available yet!");
            }
    }
}
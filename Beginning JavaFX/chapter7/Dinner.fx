
package examples.chapter7;

// Listing 7-10. Application that accesses the package level functionality in CookDessert through the public interface in Desserts: Dinner.fx

//package com.foo.meal;
// import com.foo.dessert.*;
var dessert = Desserts {};
dessert.item = "Pudding";
dessert.prepare();


/*
output
------
Baking item: Pudding for 10.0 min
Cooling item: Pudding for 5.0 min
Item Pudding is ready!!

*/
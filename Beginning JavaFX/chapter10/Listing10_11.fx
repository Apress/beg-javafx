
package examples.chapter10;

//  Listing 10-11. Ways of deleting elements from a sequence

var fruits : String [] = ["Applet" , "Mango" , "Orange", "Grapes"];
delete "Mango" from fruits;   // deleting the element by specifying the element itself.
delete fruits[1]; // deleting the element by specifying the index of the element
println(fruits);      // [ Applet , Grapes ]


/*
output
------
[ Applet, Grapes ]

*/
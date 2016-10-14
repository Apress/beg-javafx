

// Listing 7-19. Another class definition in the same package accessing protected members of Cup.fx: Saucer.fx

// package com.cutlery;
class Saucer {
    init {
//        var c = Cup{};
//        c.material = "porcelain";
//        c.purpose = "tea";
//        println(c.material);
//        println(c.purpose);
    }
}
var s = Saucer {};
/*
Note :- Compile the two scripts and run Saucer.fx to see the following result.
output
------
porcelain
tea
*/
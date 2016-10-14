
package examples.chapter11;

//  Listing 11-6. BindUsingTriggersError.fx
var x = 20;
var y = 30;
var sum = bind x + y on replace {
    println("Sum: {sum}");
}
x = 30;
//sum = 100; // Runtime error

/*
output
------
Sum: 50
Sum: 60

*/
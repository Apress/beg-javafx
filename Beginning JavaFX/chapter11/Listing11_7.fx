
package examples.chapter11;

//  Listing 11-7. BindUsingTriggers.fx

var x = 20 on replace {
    sum = x + y;
}
var y = 30 on replace {
    sum = x + y;
}
var sum = x + y on replace {
    println ("Sum: {sum}");
}
x = 30;
overrideSum(100);
function overrideSum(val: Integer) {
    sum = val;
}

/*
output
------
Sum: 20
Sum: 50
Sum: 50
Sum: 60
Sum: 100

*/
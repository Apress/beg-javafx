
//  Listing 7-22. An application using the Rectangle API: UIBuilder.fx

//package com.foo.uibuilder;
//import com.foo.*;
var borderRect = Rectangle {
    x: 0
    y: 0
    width: 100
    height: 100
}
borderRect.draw();
// borderRect.computeArea(); - ERROR: Will not work

/*
Note : Compile the two scripts and run UIBuilder.fx to see the following result.
output
-------
Initializing the rect peer
Creating graphics surface
Rectangle Drawn
*/

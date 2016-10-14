
// Listing 7-17. A car implementation that extends Vehicle: Car.fx

//package com.automobile.fourwheelers;
//import com.automobile.*;
class Car extends Vehicle {
    var noOfSeats: Integer;
    var hatchBack: Boolean;
    protected override function checkQuality(): Boolean {
    // Check engine
    // Check Interiors
    // Check Painting
        return true;
    }
    init {
        noOfSeats = 4;
        hatchBack = true;
        noOfWheels = 4;
        noOfDoors = 4;
        inspectionDone = true;
        // make = "Honda"; // COMPILER ERROR: Not allowed
        // YearOfManufacture = 2008; // COMPILER ERROR: Not allowed
    }
}
var corolla = Car {};
println("Year Of Manufacture: {corolla.getYearOfManufacture()}");
println("Make: {corolla.getMake()}");
println("No Of Wheels: {corolla.getNoOfWheels()}");
println("No Of Doors: {corolla.getNoOfDoors()}");


// Note :- Compile the two scripts and run Car.fx to see the following result.
/*
output
------
Year Of Manufacture: 2009
Make: Toyota
No Of Wheels: 4
No Of Doors: 4
*/
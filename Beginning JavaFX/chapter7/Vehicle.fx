
// Listing 7-16. A generic vehicle superclass: Vehicle.fx

// package com.automobile;

public class Vehicle {
    
    package var yearOfManufacture: Integer;
    protected var noOfWheels: Integer;
    protected var noOfDoors: Integer;
    var make: String;
    protected var inspectionDone: Boolean;

    protected function checkQuality(): Boolean { 
        return false;
    };
    public function getYearOfManufacture() {
     yearOfManufacture;
    }
    init {
        yearOfManufacture = 2009;
        make = "Toyota";
    }
    public function getMake() {
        make;
    }
    public function getNoOfDoors() {
        noOfDoors;
    }
    public function getNoOfWheels() {
        noOfWheels;
    }
}
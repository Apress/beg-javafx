
package examples.chapter7;

//Listing 7-1. Variables with default access. FileName : Employee.fx

// Note :  Filename : Employee.fx

// Script Private variables
var empId: String;
var firstName: String;
var lastName: String;
var deptId: Number;
var designation: String;

public function populateData(empID: String) {
    empId = empID;
    // Typically other details are fetched from web-service or database using the empid.
    // Hardcoding here
    if (empId == "23456") {
        firstName = "Praveen";
        lastName = "Mohan";
        deptId = 44;
        designation = "Manager";
    } else {
        println("Invalid Employee ID");
    }
}

public function printData() {
    println("Details of employee with ID: {empId}");
    println("First Name: {firstName}");
    println("Last Name: {lastName}");
    println("Department ID: {deptId}");
    println("Designation: {designation}");
}

public function run() {
    empId = "11111";
    firstName = "Lawrence";
    lastName = "PremKumar";
    deptId = 33;
    designation = "Developer";
    printData();
}


/*
 ouput
 -----
Details of employee with ID: 11111
First Name: Lawrence
Last Name: PremKumar
Department ID: 33.0
Designation: Developer

*/
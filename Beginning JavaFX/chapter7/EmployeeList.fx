
package examples.chapter7;

// Listing 7-2. Accessing script-private variables of another script: EmployeeList.fx

// Note : Filename EmployeeList.fx

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
    var employee = EmployeeList {};
var id:String = "23456";
//employee.empId = id;  - ERROR: Not accessible here
//employee.firstName = "Praveen"; - ERROR: Not accessible here
employee.populateData(id);
employee.printData();

}


/*
 output
 ------
 Details of employee with ID: 23456
First Name: Praveen
Last Name: Mohan
Department ID: 44.0
Designation: Manager

*/
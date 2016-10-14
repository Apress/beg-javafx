
package examples.chapter9;

//  Listing 9-15. Binding with object literals

var deptName = "JavaFX";
var empNames = ["Richard", "Praveen", "Lawrence", "Steve"];
var emp:Employee[] = [];

class Employee {
    var name: String;
    var age: Number;
    var department: String;
    var id: Number;

    function printInfo() {
        println("{name}, {age}, {department}, {id}");
    }
}

emp = for (x in [0..3]) {
    Employee {
        id: x
        name: empNames[x]
        department: bind deptName
        age: 34
    }

}

for (e in emp) e.printInfo();
deptName = "JavaFX BU";
println("----------------");
for (e in emp) e.printInfo();

/*
output
--------
Richard, 34.0, JavaFX, 0.0
Praveen, 34.0, JavaFX, 1.0
Lawrence, 34.0, JavaFX, 2.0
Steve, 34.0, JavaFX, 3.0
----------------
Richard, 34.0, JavaFX BU, 0.0
Praveen, 34.0, JavaFX BU, 1.0
Lawrence, 34.0, JavaFX BU, 2.0
Steve, 34.0, JavaFX BU, 3.0

*/
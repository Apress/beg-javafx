
package examples.chapter8;

// Listing 8.2 – data member initialization order

class Base {
    var a : Integer;
    var str:String;
    init{
            println("Base class init block.");
            a = 10;
            str="Base";
    }
}

class Derived extends Base {
    var k:Number;
    init {
        println("Derived class init block.");
        k=34.34;
    }

    function printValues() : Void {
        println("a = { der.a }  str = {der.str}  k = {der.k}");
    }
}

var der:Derived = Derived{}
der.printValues();	// a = 10  str = Base  k = 34.34

/*
 ouput
 ------
Base class init block.
Derived class init block.
a = 10  str = Base  k = 34.34

*/
package examples.chapter6;

// Listing 6-10. A script-level function and a main function with the same name

    function sayHello( ){
        println("i am a script-level function..!");
    }

    class MyClass {
        function sayHello( ){
            println("i am class member function..!");
        }
    }
    sayHello();
    var obj : MyClass = MyClass{}
    obj.sayHello( );
    MyClass{}.sayHello();    // anonymous object calling the member function


/*
 output
 ------
 
i am a script-level function..!
i am class member function..!
i am class member function..!

*/

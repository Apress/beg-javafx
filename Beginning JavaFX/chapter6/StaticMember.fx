
package examples.chapter6;

// Listing 6-8. Using script-level variables and functions as static members of a class

// Note : Please save the file as StaticMember.fx

    var x : Integer = 14;
    function square() {
        x * x;
    }

    class StaticMember {
        var dataMem : Integer = x;

        function  memberFunction(){
            println("square of {x} = {square()}");
            println(x);
        }
    }

    var st = StaticMember{}; // instance of the class
    println("{st.x},  {st.dataMem }");    // 14,14
    StaticMember.x = 3;
    println("{st.x}, square: {st.square() }");    //9, square:  9
    st.memberFunction();
    st. dataMem = 99;
    println("{StaticMember.x}, {st.dataMem }");    //3, 99
    st = StaticMember {
        dataMem : 71717
    };
    println("{StaticMember.x},  {st.dataMem }");    //3, 71717



/*
    output
    -------
14,  14
3, square: 9
square of 3 = 9
3
3, 99
3,  71717

*/
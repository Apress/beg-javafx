
package examples.chapter5;

// Listing 5-15. CommandLineArgsDemo.fx, an example using the getArguments() method

    public  function area_of_circle( radius :Number):Number {
        return 2 * 3.142 * radius ;
    }

    function run (){
        println("Learning FX.getArguments() ..!");
        var args : String []  = FX.getArguments();
        println(area_of_circle (java.lang.Integer.parseInt(args[0])));
    }

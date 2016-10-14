
package examples.chapter11;

//Listing 11-15. NestedTriggers.fx

 class TriggerSample {
     var w = 100 on replace oldVal {
         var valid = isValid(w) on replace {
             if (not valid) {
                 println("Invalid value {w}. Reset to {oldVal}");
                 w = oldVal;
             } else {
                println("Valid value {w}");
             }
             println(w);
         }
     }
 }
 
 function isValid(val: Integer) {
    val > 0;
 }
 function run() {
     var sample = TriggerSample{};
     sample.w = 200;
     sample.w = 0;
 }

/*
output
-------
Valid value 100
100
Valid value 200
200
Invalid value 0. Reset to 200
Valid value 200
200
200

*/
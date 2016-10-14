
package examples.chapter11;

//  Listing 11-14. SequenceTriggerWithBind.fx
var min = 0;
var max = 5;
def seq = bind for (x in [min..max]) " {x*x}" on replace oldVal[sindx..eindx] = newElm {
    println("Seq changed from {oldVal} [{sindx}..{eindx}] by {newElm} to {seq}");
}
min = 5;
max = 8;

/*
output
-------
Seq changed from  [0..-1] by  0 1 4 9 16 25 to  0 1 4 9 16 25
Seq changed from  0 1 4 9 16 25 [0..4] by  to  25
Seq changed from  25 [1..0] by  36 49 64 to  25 36 49 64

*/
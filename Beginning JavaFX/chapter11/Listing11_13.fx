
package examples.chapter11;

//  Listing 11-13. SequenceTriggerNewSyntax2.fx

 var seq = ['A', 'B', 'C', 'D', 'E', 'F'] on replace oldValue[fIndex..lIndex] = newElements {
    println ("Seq changed: {oldValue} [{fIndex}..{lIndex}] by {newElements} to {seq}");
 }
 insert 'G' into seq;
 delete 'C' from seq;
 insert 'Z' before seq[0];
 seq[1] = 'V';
 seq[3..5] = ['H', 'J'];
 delete seq[1..2];

/*

output
------
Seq changed:  [0..-1] by ABCDEF to ABCDEF
Seq changed: ABCDEF [6..5] by G to ABCDEFG
Seq changed: ABCDEFG [2..2] by  to ABDEFG
Seq changed: ABDEFG [0..-1] by Z to ZABDEFG
Seq changed: ZABDEFG [1..1] by V to ZVBDEFG
Seq changed: ZVBDEFG [3..5] by HJ to ZVBHJG
Seq changed: ZVBHJG [1..2] by  to ZHJG

*/
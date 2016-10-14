
package examples.chapter11;

// Listing 11-12. SequenceTriggerNewSyntax1.fx

 var seq = ['A', 'B', 'C', 'D', 'E', 'F'] on replace oldValue = newElements {
     println("Seq changed: {oldValue} by {newElements} to {seq}");
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
Seq changed:  by ABCDEF to ABCDEF
Seq changed: ABCDEF by G to ABCDEFG
Seq changed: ABCDEFG by  to ABDEFG
Seq changed: ABDEFG by Z to ZABDEFG
Seq changed: ZABDEFG by V to ZVBDEFG
Seq changed: ZVBDEFG by HJ to ZVBHJG
Seq changed: ZVBHJG by  to ZHJG

 */

package examples.chapter11;

//  Listing 11-11. SequenceTrigger.fx

var seq = ['A', 'B', 'C', 'D', 'E', 'F'] on replace oldValue {
    println("Seq changed from {oldValue} to {seq}");
}
 insert 'G' into seq;
 delete 'C' from seq;
 insert 'Z' before seq[0];
 seq[1] = 'V';
 seq[3..5] = ['H', 'J'];
 delete seq[1..2];

 /*
 output
 -------
Seq changed from  to ABCDEF
Seq changed from ABCDEF to ABCDEFG
Seq changed from ABCDEFG to ABDEFG
Seq changed from ABDEFG to ZABDEFG
Seq changed from ZABDEFG to ZVBDEFG
Seq changed from ZVBDEFG to ZVBHJG
Seq changed from ZVBHJG to ZHJG

 */
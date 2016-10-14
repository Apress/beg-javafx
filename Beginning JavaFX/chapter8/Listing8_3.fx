
package examples.chapter8;

//  Listing 8-3 – Overriding data members

class Game{
    var player:Integer = 2;
    var item : String="Some Game";
    var location:String="Out Door";

    function printValues() : Void {
        println("player = {player}  item = {item}  location={location}");
    }
}

class Cricket extends Game{
    override var player=11;
    override var item="Bat,Ball and stumps";
    override var location;		// data member is not initialized.

    override function printValues() : Void {
        println("player = {player}  item = {item}  location={location}");
    }
}
var game:Game=Game{ }
game.printValues();
var cri:Cricket = Cricket{}
cri.printValues();


/*
output
-----
player = 2  item = Some Game  location=Out Door
player = 11  item = Bat,Ball and stumps  location=Out Door

*/

//  Listing 7-25. A juke box application that uses MediaPlayer: MediaBox.fx
var player = MediaPlayer {
    url: "http://www.javafx.com/javafx_launch.wmv"
}
player.play();
println("Is Playing? {player.playing}");
player.stop();
println("Is Playing? {player.playing}");

/*
output
-------
Currently Playing http://www.javafx.com/javafx_launch.wmv
Is Playing? true
Is Playing? false

*/
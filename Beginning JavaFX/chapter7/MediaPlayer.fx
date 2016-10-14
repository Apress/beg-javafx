
//  Listing 7-24. Mock Media Player implementation: MediaPlayer.fx

public class MediaPlayer {
    public var url: String;
    public-read var playing: Boolean = false;
    public function play() {
        // play media here
        println("Currently Playing {url}");
        playing = true;
    }
    public function stop() {
        // stop the playback
        playing = false;
    }
}

package examples.chapter13;

//  Listing 13-2 – Play/Pause/Stop Demonstration

import javafx.stage.Stage;
import javafx.scene.Scene;
import javafx.scene.shape.Circle;
import javafx.scene.paint.Color;
import javafx.animation.Interpolator;
import javafx.animation.KeyFrame;
import javafx.animation.Timeline;
import javafx.scene.control.ToggleGroup;
import javafx.scene.control.RadioButton;
import javafx.scene.layout.HBox;

var xAxis : Number = 0.0;
def toggleGroup = ToggleGroup {};
var timeline : Timeline;

var playRB : RadioButton = RadioButton {
	text: "Play"
    toggleGroup: toggleGroup
}

var playFromStartRB : RadioButton = RadioButton {
	text: "PlayFromStart"
    toggleGroup: toggleGroup
}

var stopRB : RadioButton = RadioButton {
	text: "Stop"
    toggleGroup: toggleGroup
}

var pauseRB : RadioButton = RadioButton {
	    text: "Pause"
    toggleGroup: toggleGroup
}

var selectedButton = bind toggleGroup.selectedToggle on replace {
	    if (selectedButton == pauseRB) {
	        timeline.pause();
	    } else if (selectedButton == stopRB) {
	        timeline.stop();
	    } else if (selectedButton == playRB) {
	        timeline.play();
	    } else if (selectedButton == playFromStartRB) {
	       timeline.playFromStart();
    }
}

var layout : HBox  = HBox{
     translateX : 10
     translateY : 20
     spacing : 10
     content: [playFromStartRB, stopRB, playRB, pauseRB]
}

var circle : Circle = Circle {
    centerX: 20.0
    centerY: 100.0
    radius: 40.0
    fill: Color.BLACK
    translateX: bind xAxis
}

timeline = Timeline {
    keyFrames : [
        KeyFrame {
            time : 2s
            values : xAxis => 400 tween Interpolator.EASEBOTH
        }
    ]
    autoReverse: true
    repeatCount:  Timeline.INDEFINITE
}
timeline.play();

Stage {
    title: "play/pause/stop demo"
    scene: Scene {
        width: 450
        height: 200
        content: [ layout, circle ]
    }
}

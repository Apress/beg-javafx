
package examples.chapter13;

//  Listing 13-6 – Animation – simplified syntax

import javafx.stage.Stage;
import javafx.scene.Scene;
import javafx.scene.shape.Circle;
import javafx.scene.paint.Color;
import javafx.animation.Timeline;
import javafx.animation.KeyFrame;
import javafx.animation.Interpolator;

var rad : Number = 10.0;
var circle : Circle =  Circle {
    centerX: 100
    centerY: 100
    radius : bind rad
	    fill: Color.RED
}

Timeline {
    repeatCount: Timeline.INDEFINITE
    autoReverse: true
    keyFrames : [
        at (0s) { rad => 80 tween Interpolator.LINEAR },
        at (4s) { rad => 0 tween Interpolator.LINEAR }
    ]
}.play();

Stage {
    title: "Animation Example-1"
    scene: Scene {
        width: 200
        height: 200
        content: [   circle   ]
    }
}

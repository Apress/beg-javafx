
package examples.chapter13;

//  Listing 13-9. Applying a scale transition

import javafx.stage.Stage;
import javafx.scene.Scene;
import javafx.scene.shape.Circle;
import javafx.scene.paint.Color;
import javafx.animation.*;
import javafx.animation.transition.*;

var rad : Number = 10.0;
var circle : Circle =  Circle {
    centerX: 100, centerY: 100
        radius : bind rad
    fill: Color.RED
}

var scaleTransition = ScaleTransition {
    fromX: 0.0
    fromY: 0.0
    toX: 8.0
    toY: 8.0
    node: circle
    duration: 4s
    repeatCount: Timeline.INDEFINITE
    autoReverse: true
}

scaleTransition.play();

Stage {
    title: "Scale Transition"
    scene: Scene {
        width: 200
        height: 200
        content: [circle]
    }
}

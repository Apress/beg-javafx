
package examples.chapter13;

// Listing 13-3 – KeyFrame action

import javafx.stage.*;
import javafx.scene.shape.*;
import javafx.scene.paint.*;
import javafx.animation.*;
import javafx.scene.*;


var scaleX: Number = 1.0;
var scaleY: Number = 1.0;
var rotate: Number = 0;
var timeline : Timeline;
var scene:Scene;
var sceneWidth = bind scene.width;
var sceneHeight = bind scene.height;
var colors = [Color.RED, Color.BLUE, Color.GREEN, Color.LIME, Color.BROWN, Color.GOLD, Color.PINK];
var colorIndex = 0 on replace {
    if (colorIndex >= sizeof colors - 1) {
        colorIndex = 0;
    }
}
var fillColor = bind colors[colorIndex];
var rect: Rectangle = Rectangle {
    x: bind sceneWidth/2 - 50
    y: bind sceneHeight/2 - 50
    width: 100
    height: 100
    fill: bind fillColor
    stroke: Color.YELLOW
    strokeWidth: 2.0
    scaleX: bind scaleX
    scaleY: bind scaleY
    rotate: bind rotate
}

var counter = 0;

timeline = Timeline {
    keyFrames : [
        KeyFrame {
            time : 0s
            values : [scaleX => 0 tween Interpolator.LINEAR,
                      scaleY => 0 tween Interpolator.LINEAR,
                     rotate => 0 tween Interpolator.LINEAR]
            action: function() {
                print("0 ");
                colorIndex ++;
            }
        },
        KeyFrame {
            time : 3s
            values : [scaleX => 1.5 tween Interpolator.LINEAR,
                      scaleY => 1.5 tween Interpolator.LINEAR,
                      rotate => 120 tween Interpolator.LINEAR]
            action: function() {
                print("3 ");
                colorIndex ++;
            }
        },
        KeyFrame {
            time : 5s
            values : [scaleX => 4.0 tween Interpolator.LINEAR,
                      scaleY => 4.0 tween Interpolator.LINEAR,
                      rotate => 360 tween Interpolator.LINEAR]
            action: function() {
                print("5 ");
                colorIndex ++;
            }
        }
    ]
    autoReverse: true
    repeatCount:  Timeline.INDEFINITE
}
timeline.play();

scene = Scene {
    width: 400
    height: 400
    content: [rect]
}

Stage {
    title: "KeyFrame Action demo"
    scene: scene
}

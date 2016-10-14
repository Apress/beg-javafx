package examples.chapter12;

import javafx.scene.shape.Circle;
import javafx.scene.paint.Color;
import javafx.stage.Stage;
import javafx.scene.Scene;

var circle1 = Circle {
    centerX: 100
    centerY: 150
    radius: 40
    fill: null
    stroke: Color.RED
    strokeWidth: 3
}
var circle2 = Circle {
    centerX: 140
    centerY: 150
    radius: 40
    fill: null
    stroke: Color.BLUE
    strokeWidth: 3
}
var circle3 = Circle {
    centerX: 120
    centerY: 170
    radius: 40
    fill: null
    stroke: Color.GREEN
    strokeWidth: 3
}

var scene: Scene = Scene {
    width: 240
    height: 320
    content: [circle1, circle2, circle3]
}
Stage {
    title: "Three Rings"
    scene: scene
}

package examples.chapter12;

//  Listing 12-9. Linear Gradient REPEAT Cycle

import javafx.scene.shape.Rectangle;
import javafx.scene.paint.*;
import javafx.scene.Scene;
import javafx.stage.Stage;
var w: Number = 100;
var h: Number = 100;
Stage {
    title: "LinearGradient"
    scene: Scene {
        content: Rectangle {
            x: 0
            y: 0
            width: bind w
            height: bind h
            fill: LinearGradient {
                cycleMethod: CycleMethod.REPEAT
                startX: 0, startY: 0, endX: 0.5, endY: 0.5
                proportional: true
                stops: [
                    Stop { offset: 0.0 color: Color.BLACK },
                    Stop { offset: 0.3 color: Color.WHITE },
                    Stop { offset: 0.6 color: Color.RED },
                    Stop { offset: 1.0 color: Color.BLACK }
                ]
                }
            }
        }
}
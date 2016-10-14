
package examples.chapter12;

//  Listing 12-7. Linear Gradient with Absolute Coordinates
import javafx.scene.shape.Rectangle;
import javafx.scene.paint.*;
import javafx.scene.Scene;
import javafx.stage.Stage;

Stage {
    title: "LinearGradient"
    scene: Scene {
        width: 120
        height: 120
        content: Rectangle {
                x: 0
                y: 0
                width: 100
                height: 100
                fill: LinearGradient {
                    startX: 0.0, startY: 0.0, endX: 100.0, endY: 100.0
                    proportional: false
                    stops: [
                        Stop { offset: 0.0 color: Color.BLACK },
                        Stop { offset: 0.5 color: Color.WHITE },
                        Stop { offset: 1.0 color: Color.BLACK }
                    ]
                }
            }
    }
}
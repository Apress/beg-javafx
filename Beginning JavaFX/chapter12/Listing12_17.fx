
package examples.chapter12;

//  Listing 12-17 – Translate Transformation using translateX, Y

import javafx.scene.*;
import javafx.scene.shape.*;
import javafx.scene.paint.*;
import javafx.scene.input.*;
import javafx.stage.Stage;

var tx: Number = 0;
var ty: Number = 0;

var rect: Rectangle = Rectangle {
    x: 0
    y: 0
    width: 100
    height: 100
    fill: Color.GRAY
    translateX: bind tx
    translateY: bind ty

    onKeyPressed: function (ke: KeyEvent) {
        if (ke.code == KeyCode.VK_RIGHT) {
                tx = tx + 10;
        } else if (ke.code == KeyCode.VK_LEFT) {
                tx = tx - 10;
        } else if (ke.code == KeyCode.VK_UP) {
                ty = ty - 10;
        } else if (ke.code == KeyCode.VK_DOWN) {
                ty = ty + 10;
        }
    }
}

Stage {
    scene: Scene {
            width: 400
            height: 400
            content: [rect]
    }
}
rect.requestFocus();


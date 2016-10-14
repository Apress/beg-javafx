
package examples.chapter12;

//  Listing 12-18 – Rotate transformation using rotateon a custom node

import javafx.scene.*;
import javafx.scene.shape.*;
import javafx.scene.paint.*;
import javafx.scene.input.*;
import javafx.stage.Stage;
import javafx.scene.transform.*;

var rotate: Number = 0;

var svgNode: SVGNode = SVGNode {
    rotate: bind rotate

    onKeyPressed: function (ke: KeyEvent) {
        if (ke.code == KeyCode.VK_RIGHT) {
                rotate++;
                if (rotate > 360) rotate = 360;
        } else if (ke.code == KeyCode.VK_LEFT) {
                rotate --;
                if (rotate < 0) rotate = 0;
        }
    }
}

Stage {
    scene: Scene {
        width: 150
        height: 150
        content: [svgNode]
    }
}

svgNode.requestFocus();

class SVGNode extends CustomNode {

    public override function create(): Node {
        var gr: Group = Group {
            content: [
                SVGPath {
                content: "M70 20 L30 100 L110 100 Z"
            },
            Rectangle {
                x: 30
                y: 20
                width: 80
                height: 80
                fill: null
                stroke: Color.RED
            }
        ]
    }
    }
}

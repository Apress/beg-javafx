
package examples.chapter12;

//  Listing 12-19 – Scale and Shear Transformations

import javafx.scene.*;
import javafx.scene.shape.*;
import javafx.scene.paint.*;
import javafx.scene.input.*;
import javafx.stage.Stage;
import javafx.scene.transform.*;

var scaleX: Number = 1;
var scaleY: Number = 1;
var shearX: Number = 0.0;
var shearY: Number = 0.0;

var svgNode: SVGNode = SVGNode {
    transforms: bind [
        Transform.scale(scaleX, scaleY, svgNode.layoutBounds.maxX/2, svgNode.layoutBounds.maxY/2),
        Transform.shear(shearX, shearY)
    ]

    onKeyPressed: function (ke: KeyEvent) {
        if (ke.code == KeyCode.VK_UP) {
            scaleX += 0.2;
            scaleY += 0.2;
            if (scaleX > 3.0) {
                    scaleX = -3.0;
                    scaleY = -3.0;
            }
        } else if (ke.code == KeyCode.VK_DOWN) {
            scaleX -= 0.2;
            scaleY -= 0.2;
            if (scaleX < -3.0) {
                    scaleX = 3.0;
                    scaleY = 3.0;
            }
        } else if (ke.code == KeyCode.VK_LEFT) {
            shearX += 0.2;
            shearY += 0.2;
            if (shearX > 1.0) {
                    shearX = -1.0;
                    shearY = -1.0;
            }
        } else if (ke.code == KeyCode.VK_RIGHT) {
            shearX -= 0.2;
            shearY -= 0.2;
            if (shearX < -1.0) {
                    shearX = 1.0;
                    shearY = 1.0;
            }
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
    public override var children: Node[] = [
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
    ];
}

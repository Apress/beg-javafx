
package examples.chapter13;

//  Listing 13-8. Applying a rotation matrix to a targeted node

import javafx.stage.Stage;
import javafx.scene.*;
import javafx.scene.paint.*;
import javafx.animation.transition.*;
import javafx.scene.shape.*;
import javafx.scene.text.*;
import javafx.animation.*;

var rad : Number = 10.0;
var path:Path = Path {
    id: "Path"
    translateX: -150
    translateY: -130
    fill: Color.GRAY
    stroke: Color.BLACK
    elements: [
        MoveTo {
            x: 200
            y: 150
        },
            LineTo {
            x: 300
            y: 350
        },
            LineTo {
            x: 200
            y: 350
        },
            LineTo {
            x: 300
            y: 150
        },
            LineTo {
            x: 200
            y: 150
        },
            MoveTo {
            x: 250
            y: 250
        },
            CubicCurveTo {
            controlX1: 250
            controlY1: 250
            controlX2: 350
            controlY2: 150
            x: 300
            y: 350
        },
            MoveTo {
            x: 250
            y: 250
        },
            CubicCurveTo {
            controlX1: 250
            controlY1: 250
            controlX2: 150
            controlY2: 150
            x: 200
            y: 350
        },
            MoveTo {
            x: 250
            y: 250
        },
            ArcTo {
            x: 250
            y: 150
            radiusX: 100
            radiusY: 100
            xAxisRotation: 360
            sweepFlag: true
        },
            ArcTo {
            x: 250
            y: 250
            radiusX: 100
            radiusY: 100
            xAxisRotation: -360
            sweepFlag: true
        },
            MoveTo {
            x: 250
            y: 150
        },
            VLineTo {
            y: 250
        },
            MoveTo {
            x: 235
            y: 200
        },
            HLineTo {
            x: 265
        }
    ]
}

var node = Text {
    content: "JavaFX"
    fill: null
    stroke: Color.RED
    font: Font { size: 15 }
}

var pathTransition = PathTransition {
    duration: 10s
    path: AnimationPath.createFromPath(path)
    repeatCount: Timeline.INDEFINITE
    autoReverse: true
    orientation: OrientationType.ORTHOGONAL_TO_TANGENT
    node: node
}
pathTransition.play();

Stage {
    title: "Path Transition"
    scene: Scene {
        width: 300
        height: 300
        content: [path, node]
    }
}

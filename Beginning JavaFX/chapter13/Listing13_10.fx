
package examples.chapter13;

// Listing 13-10. Combining multiple transitions

import javafx.animation.*;
import javafx.animation.transition.*;
import javafx.scene.Group;
import javafx.scene.image.Image;
import javafx.scene.image.ImageView;
import javafx.scene.input.MouseEvent;
import javafx.scene.paint.Color;
import javafx.scene.paint.CycleMethod;
import javafx.scene.paint.RadialGradient;
import javafx.scene.paint.Stop;
import javafx.scene.Scene;
import javafx.scene.shape.ArcTo;
import javafx.scene.shape.Circle;
import javafx.scene.shape.MoveTo;
import javafx.scene.shape.Path;
import javafx.stage.Stage;

var x: Number;
var y: Number;
var stgX: Number = 0;
var stgY: Number = 0;
var scene: Scene;
var stgWidth: Number = bind scene.width;
var stgHeight: Number = bind scene.height;

var rgp: RadialGradient = RadialGradient {
    centerX: 0.5
    centerY: 0.5
    radius: 1.0
    proportional: true
    cycleMethod: CycleMethod.REFLECT

    stops: [
        Stop {
            offset: 0.0
            color: Color.RED
        },
        Stop {
            offset: 0.4
            color: Color.BLACK
        },
        Stop {
            offset: 0.7
            color: Color.GRAY
        }
    ]
}


var path: Path = Path {
    fill: rgp
    stroke: Color.LIGHTBLUE
    strokeWidth: 2
    elements: [
        MoveTo {
            x: 15
            y: 15
        },
        ArcTo {
            x: 50
            y: 10
            radiusX: 20
            radiusY: 20
            sweepFlag: true
        },
        ArcTo {
            x: 70
            y: 20
            radiusX: 20
            radiusY: 20
            sweepFlag: true
        },
        ArcTo {
            x: 50
            y: 60
            radiusX: 20
            radiusY: 20
            sweepFlag: true
        },
        ArcTo {
            x: 20
            y: 50
            radiusX: 10
            radiusY: 5
            sweepFlag: true
        },
        ArcTo {
            x: 15
            y: 15
            radiusX: 10
            radiusY: 10
            sweepFlag: true
        },
    ]
};

var blueCircle: Circle = Circle {
    centerX: 15
    centerY: 15
    radius: 4
    fill: Color.BLUE
}

var redCircle: Circle = Circle {
    centerX: 70
    centerY: 20
    radius: 4
    fill: Color.RED
}

var greenCircle: Circle = Circle {
    centerX: 20
    centerY: 50
    radius: 4
    fill: Color.GREEN
}

var gr: Group = Group {
    translateX: bind x
    translateY: bind y
    content: [path, blueCircle, redCircle, greenCircle]
}

var pathTransition = PathTransition {
    duration: 5s
    node: blueCircle
    path: AnimationPath.createFromPath(path)
    orientation: OrientationType.ORTHOGONAL_TO_TANGENT
    repeatCount: Timeline.INDEFINITE
    rate: 0.5
}
pathTransition.play();

var pathTransition1 = PathTransition {
    duration: 5s
    node: redCircle
    path: AnimationPath.createFromPath(path)
    orientation: OrientationType.ORTHOGONAL_TO_TANGENT
    repeatCount: Timeline.INDEFINITE
    rate: 1.0
}
pathTransition1.play();

var pathTransition2 = PathTransition {
    duration: 5s
    node: greenCircle
    path: AnimationPath.createFromPath(path)
    orientation: OrientationType.ORTHOGONAL_TO_TANGENT
    repeatCount: Timeline.INDEFINITE
    rate: 2.0
}
pathTransition2.play();

var xTimeline: Timeline = Timeline {
    repeatCount: Timeline.INDEFINITE
    autoReverse: true
    keyFrames: [
    at (0s) {x => scene.x},
    at (7s) {x =>
        stgWidth - 90 tween Interpolator.LINEAR},
    ]
};

var yTimeline: Timeline = Timeline {
    repeatCount: Timeline.INDEFINITE
    autoReverse: true
    keyFrames: [
    at (0s) {y => scene.y},
    at (4s) {y => stgHeight - 75 tween Interpolator.LINEAR},
    ]
};

var fadeTransition = FadeTransition {
    duration: 10s
    node: bind path
    fromValue: 1.0
    toValue: 0.2
    repeatCount: Timeline.INDEFINITE
    autoReverse: true
    interpolate: true
}
fadeTransition.playFromStart();

var rotTransition = RotateTransition {
    duration: 4s
    node: bind gr
    fromAngle: 0
    toAngle: 360
    repeatCount: Timeline.INDEFINITE
    autoReverse: true
}
rotTransition.playFromStart();

scene = Scene{
    fill: Color.WHITE
    width: 240
    height: 320
    content: [ gr ]
}

Stage{
    title: "Cloud"
    visible: true

    scene: scene
    onClose: function() {
        java.lang.System.exit(0);
    }
}
xTimeline.play();
yTimeline.play();

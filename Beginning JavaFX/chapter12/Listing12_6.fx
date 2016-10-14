
package examples.chapter12;

//  Listing 12.6 – Creating Custom Shapes
import javafx.scene.shape.*;
import javafx.scene.paint.*;

var path:Path = Path {
    id: "Path"
    translateX: -175
    translateY: -150
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

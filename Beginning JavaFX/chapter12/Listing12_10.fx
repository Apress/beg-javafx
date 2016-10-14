
package examples.chapter12;

// Listing 12-10 – Radial Gradient with focus

import javafx.stage.Stage;
import javafx.scene.Scene;
import javafx.scene.input.KeyEvent;
import javafx.scene.input.KeyCode;
import javafx.scene.shape.*;
import javafx.scene.paint.*;
import javafx.scene.layout.*;

public class RadialGradientSample {

    init {
        var h: Number = 100;
        var w: Number = 100;
        var sceneWidth = 300;
        var sceneHeight = 300;
        var counter = 0;
        var radialGradient: RadialGradient [] = [
            for(y in [10..30 step 10]) {
                for(x in [10..30 step 10]) {
                    RadialGradient {
                        cycleMethod: CycleMethod.NO_CYCLE
                        centerX: w / 2,
                        centerY: h / 2,
                        focusX: if (x/10 == 1) (w/2 + 30)
                        		else if (x/10 == 2) (w/2)
                        		else (w/2 - 30)
                        focusY:  if (y/10 == 1) (h/2 + 30)
                        		else if (y/10 == 2) (h/2)
                        		else (h/2 - 30)
                        radius: 50
                        proportional: false
                        stops: [ Stop { offset: 0.0 color: Color.BLACK },
                                 Stop { offset: 1.0 color: Color.RED } ]
                    }
                }
            }
        ];

        var tile: Tile = Tile {
        	rows: 3
        	columns: 3
        	content: [
        		for (g in radialGradient)
		        Rectangle {
		            x: 0
		            y: 0
		            width: 100
		            height: 100
		            fill: radialGradient [counter++]
		        }
			]
		}

        Stage {
            scene: Scene {
                height: sceneHeight
                width: sceneWidth
                content: [
                    tile
               ]
            }
        }
    }
}

public function run() {
	RadialGradientSample{};
}

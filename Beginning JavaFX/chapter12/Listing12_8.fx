
package examples.chapter12;

//	Listing 12.8 – Linear Gradient  with Proportional coordinates
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
				startX: 0, startY: 0, endX: 1, endY: 1
		        proportional: true
		        stops: [
		        	Stop { offset: 0.0 color: Color.BLACK },
		        	Stop { offset: 0.5 color: Color.WHITE },
		        	Stop { offset: 1.0 color: Color.BLACK }
				]
			}
		}
	}
}


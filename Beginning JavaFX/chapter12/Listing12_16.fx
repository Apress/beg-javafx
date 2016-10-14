
package examples.chapter12;

// Listing 12-16. ImageView Viewport

import javafx.scene.image.*;
import javafx.scene.Scene;
import javafx.stage.Stage;
import javafx.geometry.*;
var width = 200;
var height = 200;
var img = Image {
    url: "http://noelschweig.com/photos/gallery/nature/nature4.jpg"
    width: 200
    height: 200
}
Stage {
    x: 0
    y: 0
    scene: Scene {
        width: width
        height: height
        content: ImageView {
         image: img
        }
    }
}
Stage {
    x: 200
    y: 0
    scene: Scene {
        width: width
        height: height
        content: ImageView {
            image: img
            viewport: Rectangle2D {
                minX: 0
                minY: 0
                width: 100
                height: 100
            }
        }
    }
}
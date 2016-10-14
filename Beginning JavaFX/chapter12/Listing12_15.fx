
package examples.chapter12;

//  Listing 12-15. Background Loading of Images

import javafx.scene.image.*;
import javafx.scene.Scene;
import javafx.stage.Stage;
var width = 800;
var height = 600;

var img = Image {
    url: "http://c0278592.cdn.cloudfiles.rackspacecloud.com/original/191195.jpg"
    backgroundLoading: true
    placeholder: Image {
        url: "{__DIR__}191195.png"
    }
}
Stage {
    scene: Scene {
    width: width
    height: height
    content: ImageView {
            image: img
            x: bind (width/2 - img.width/2)
            y: bind (height/2 - img.height/2)
        }
    }
}
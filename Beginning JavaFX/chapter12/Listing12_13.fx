
package examples.chapter12;

// Listing 12-13. Simple Image Loading
import javafx.scene.image.*;
var img = Image {
    url: "{__DIR__}duke.gif"
}
ImageView {
    image: img
}
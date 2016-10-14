
package examples.chapter12;

// Listing 12-14. Image Loading–Custom Size

import javafx.scene.image.*;
var img = Image {
    url: "http://www.apress.com/img/masthead_logo.gif"
    width: 200
    height: 200
}
ImageView {
    image: img
}
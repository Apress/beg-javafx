
package examples.chapter12;

//  Listing 12-11. A Text Node with a Bound Font

import javafx.scene.*;
import javafx.scene.text.*;
import javafx.scene.input.*;

var fontNames = ["Arial Bold", "Amble Condensed", "Amble Condensed Italic"];
var index = 0 on replace {
    println("Font Used: {t.font.name}");
}
var t = Text {
    font: bind Font {
        name: fontNames[index]
        size: 25
    }
    content: "JavaFX"
    textOrigin: TextOrigin.TOP
    onMouseClicked: function (me: MouseEvent) {
        if (index < sizeof fontNames) {
            index ++;
        } else {
            index = 0;
        }
    }
}
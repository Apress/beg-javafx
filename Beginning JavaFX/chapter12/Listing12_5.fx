
package examples.chapter12;

//  Listing 12-5. Dashed Stroke with Auto Synthesis of Scene/Stage
import javafx.scene.*;
import javafx.scene.shape.*;
import javafx.scene.paint.*;

var x: Number = 0;
var y: Number = 0;
var width: Number = 200;
var height: Number = 200;
var colors: Color[] = [Color.BLUE, Color.RED, Color.GREEN, Color.ORANGE,
Color.YELLOW, Color.BLACK, Color.MAGENTA,
Color.GRAY,
Color.CRIMSON, Color.LIME];
var gr: Group = Group {
    content: [
        for (i in [0..100 step 10])
            Rectangle {
                x: x + i
                y: y + i
                width: width - 2 * i
                height: height - 2 * i
                arcWidth: if (i mod 20 == 0) then i else 0
                arcHeight: if (i mod 20 == 0) then i else 0
                fill: if (i == 90) Color.BLACK else null
                strokeDashArray: [4.0, 2.0]
                strokeLineJoin: StrokeLineJoin.ROUND
                strokeLineCap: StrokeLineCap.BUTT
                strokeWidth: 5
                stroke: colors[i/10]
            }
    ]
}
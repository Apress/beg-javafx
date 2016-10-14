
package examples.chapter12;

//  Listing 12-12 – Text Alignments

import javafx.scene.paint.*;
import javafx.stage.*;
import javafx.scene.*;
import javafx.scene.input.*;
import javafx.scene.shape.*;
import javafx.scene.text.*;

public class TextAlignments {

    init {

        var content: String = "The quick brown fox jumps over the lazy dog.\n"
        	"Woven silk pyjamas exchanged for blue quartz?\n"
        	"Have a pick: twenty six letters - no forcing a jumbled quiz!";
        var alignments: TextAlignment[] = [
        		TextAlignment.LEFT,
        		TextAlignment.CENTER,
        		TextAlignment.RIGHT,
        		TextAlignment.JUSTIFY
        ];

        var alignmentsString: String[] = [
        		"TextAlignment.LEFT",
        		"TextAlignment.CENTER",
        		"TextAlignment.RIGHT",
        		"TextAlignment.JUSTIFY"
        ];

        var counter = 0;
        Stage {
        	scene: Scene {
	            height: 160
	            width: 240
	            content: [
	            	Text {
	            		x: 10
	            		y: 10
	            		content: bind alignmentsString[counter]
	            	},
	                Text {
	                    x: 10
	                    y: 40
	                    font: Font { size: 15 }
	                    content: content
	                    fill: Color.BLACK
	                    wrappingWidth: 200
	                    underline: true
	                    textAlignment: bind alignments[counter]
	                    focusTraversable: true
	                    onKeyPressed: function(e:KeyEvent) {
	                        if (e.code == KeyCode.VK_LEFT) {
	                            if (counter < alignments.size()-1) {
	                            	counter ++;
	                            } else {
	                            	counter = 0;
	                            }
	                        }
	                    }
	                }
	            ]
	        }
	    }
    }
}

public function run() {
	TextAlignments{};
}

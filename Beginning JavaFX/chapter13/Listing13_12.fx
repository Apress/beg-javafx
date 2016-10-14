
package examples.chapter13;

//	Listing 13-12 – Sequential Transition

import javafx.stage.Stage;
import javafx.scene.shape.*;
import javafx.scene.input.*;
import javafx.scene.*;
import javafx.animation.transition.*;
import javafx.scene.paint.*;

var xAxis : Integer = 0;
var yAxis : Integer = 0;
var scene : Scene ;
var grp : Group = Group{};
 var star : Path ;

var bgRect : Rectangle = Rectangle{
    width : 250
    height : 250
    focusTraversable : true
    onMouseMoved: function (e: MouseEvent): Void {
        insert star = Path{
                    elements: [
                        MoveTo {x: 24.413, y: 12.207},
                        LineTo {x: 15.979, y: 14.947},
                        LineTo {x: 15.979, y: 23.816},
                        LineTo {x: 10.766, y: 16.641},
                        LineTo {x: 2.331, y: 19.381},
                        LineTo {x: 7.544, y: 12.207},
                        LineTo {x: 2.331, y: 5.032},
                        LineTo {x: 10.766, y: 7.772},
                        LineTo {x: 15.979, y: 0.597},
                        LineTo {x: 15.979, y: 9.466},
                        ClosePath { },
                        MoveTo {x: 0, y: 0},
                        MoveTo {x: 24.413, y: 24.413}
                    ]
                    translateX: bind e.x
                    translateY: bind e.y
                    strokeWidth: 1
                    fill: Color.RED
        } into grp.content;

                SequentialTransition {
            node: star
            content: [
               RotateTransition { duration: 1s byAngle: 360  },
               ScaleTransition { duration: 2s node: star byX: 2 byY: 2 },
               FadeTransition {
                        duration: 3s fromValue: 1.0 toValue: 0.0
                        action : function(){
                            delete star from grp.content;
                        }
                }
            ]
        }.play();
    }
}

Stage {
    title: "Rotating and fading start"
    scene: bind Scene {
        content : bind [ bgRect  , grp]
        width: 200
        height: 200
    }
}

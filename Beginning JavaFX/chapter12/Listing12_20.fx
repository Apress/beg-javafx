
package examples.chapter12;

// Listing 12-20 – Login Form using controls
package layout;

import javafx.stage.Stage;
import javafx.scene.Scene;
import javafx.scene.CustomNode;
import javafx.scene.Node;
import javafx.scene.layout.Panel;
import javafx.scene.control.Label;
import javafx.scene.control.TextBox;
import javafx.scene.control.PasswordBox;
import javafx.scene.control.Button;
import javafx.scene.paint.Color;
import javafx.scene.paint.LinearGradient;
import javafx.scene.paint.Stop;
import javafx.scene.shape.Rectangle;
import javafx.stage.StageStyle;

public class LoginForm extends CustomNode{

    def width = bind scene.width on replace {
        panel.requestLayout();
    }
    def height = bind scene.height on replace {
        panel.requestLayout();
    }
    var panel : Panel;

    var paddingTop = 20.0;
    var paddingLeft = 20.0;
    var paddingBottom = 20.0;
    var paddingRight = 20.0;

    var saveButton:Button = Button {
    	text: "Save"
    	action: function() {
    		saveButton.scene.stage.close();
    	}
    }
    var cancelButton:Button = Button {
    	text: "Cancel"
    	action: function() {
    		cancelButton.scene.stage.close();
    	}
    }

    var idLabel = Label { text: "Login Name" };
    var idText = TextBox { columns : 20};
    var passwordLabel = Label { text: "Password" };
    var passwordTxtBox = PasswordBox { columns : 20};

    override function create() : Node {
        panel = Panel{
            content: [
                idLabel, idText,
                passwordLabel, passwordTxtBox,
               saveButton, cancelButton
            ]
            onLayout: onLayout
      }
   }

   function onLayout() : Void {

        var hSpacing = 10.0;
        var vSpacing = 5.0;
        var gridW = 50.0;
        var gridH = 25.0;

        idLabel.height = gridH;
        var w = panel.getNodePrefWidth(idLabel);
        var x = (paddingLeft + gridW) - w;
        var y = paddingTop;
        var h = gridH;
        panel.layoutNode(idLabel, x, y, w, h);

        x = paddingLeft + gridW + hSpacing;
        w = panel.getNodePrefWidth(idText);
        panel.layoutNode(idText, x, y, w, h);

        w = panel.getNodePrefWidth(passwordLabel);
        x = (paddingLeft + gridW) - w;
        y = idLabel.layoutY + gridH + vSpacing;
        panel.layoutNode(passwordLabel, x, y, w, h);

        x = paddingLeft + gridW + hSpacing;
        w = panel.getNodePrefWidth(passwordTxtBox);
        panel.layoutNode(passwordTxtBox, x, y, w, h);

        w = panel.getNodePrefWidth(cancelButton);
        var buttonPanelWidth = (w * 2) + hSpacing;
        x = (scene.width - buttonPanelWidth)/2.0;
        y = passwordTxtBox.layoutY + (gridH * 2);
        panel.layoutNode(saveButton, x, y, w, h);

        x = saveButton.layoutX + hSpacing + w;
        panel.layoutNode(cancelButton, x, y, w, h);
   }
}

function run(){
    Stage {
        title: "Login Form"
        style : StageStyle.UNDECORATED
        scene: Scene {
            width: 280
            height: 140
            content: [
               Rectangle {
                    width: 280
                    height: 140
                    stroke: Color.BLACK
                    strokeWidth: 2
                    fill: LinearGradient {
                        startX: 0.491
                        startY: -0.009
                        endX: 0.509
                        endY: 1.009
                        proportional: true
                        stops: [Stop {
                                offset: 0
                                color: Color.color(0.639, 0.639, 0.639, 0.239)
                            }, Stop {
                                offset: 1
                                color: Color.color(0.078, 0.078, 0.078, 0.988)
                            }]
                    }
                    arcHeight: 20
                    arcWidth: 20
                },
               LoginForm{}
            ]
        }
    }
}

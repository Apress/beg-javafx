
package examples.chapter8;

//  Listing 8-10 – Implementing Java Interfaces Anonymously

import javax.swing.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

var counter: Integer = 0;

var listener = ActionListener {
    public override function actionPerformed(ae: ActionEvent): Void {
            println("Timer Triggered {counter}");
            counter ++;
    }
}

var timer: Timer = new Timer(1000, listener);
timer.start();

/*
  output
  -----
Timer Triggered 0
Timer Triggered 1
Timer Triggered 2
Timer Triggered 3

*/

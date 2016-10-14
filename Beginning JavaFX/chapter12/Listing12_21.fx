
package examples.chapter12;

//  Listing 12-21 – A Pie Chart

import javafx.stage.Stage;
import javafx.scene.Scene;
import javafx.scene.chart.*;

def pieChart = PieChart {
    title: "Health Pie"
    data: [
        PieChart.Data { label: "Carrot" value: 22  }
        PieChart.Data { label: "Eggplant" value: 27 }
        PieChart.Data { label: "Potato" value: 16 }
        PieChart.Data { label: "Tomato" value: 50 }
        PieChart.Data { label: "Cauliflower" value: 6 }
        PieChart.Data { label: "Mushroom" value: 7 }
    ]
}

Stage {
    title: "Pie Chart"
    scene: Scene{
	    width: 540
            height: 410
            content: pieChart
     } //Scene
}//Stage


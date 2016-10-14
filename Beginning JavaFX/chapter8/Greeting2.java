
package examples.chapter8;

// Listing 8-5 – Java / JavaFX mixin comparison

public class Greeting2 implements GreetWorld {
    String courtesy = "Hello";
    String name = "Lawrence!";

    public void printGreetings() {
            System.out.println(courtesy + " " + name);
    }
    public static void main (String args[]) {
            Greeting2 g = new Greeting2();
            g.printGreetings();
    }
}

/*
 output
 -------
 Hello Lawrence!

 */
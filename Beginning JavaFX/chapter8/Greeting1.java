
package examples.chapter8;

// Listing 8-5 – Java / JavaFX mixin comparison

public class Greeting1 implements GreetWorld {
    String courtesy = "Hello";
    String name = "Praveen!";

    public void printGreetings() {
            System.out.println(courtesy + " " + name);
    }
    public static void main (String args[]) {
            Greeting1 g = new Greeting1();
            g.printGreetings();
    }
}

/*
 output
 ------
 Hello Praveen!
 
 */


package examples.chapter8;
// Listing 8-5 – Java / JavaFX mixin comparison

public mixin class GreetWorld {
    var courtesy: String = "Hello";
    var name: String;

    public function printGreetings(): Void {
            println("{courtesy} {name}");
    }
}

class Greeting1 extends GreetWorld {
    override var name = "Praveen!";
}

class Greeting2 extends GreetWorld {
    override var name = "Lawrence!";
}

public function run() {
    var g1 = Greeting1 {}
    var g2 = Greeting2 {}
    g1.printGreetings();
    g2.printGreetings();
}


package examples.chapter8;

//  Listing 8-8 – Order of initialization with multiple inheritance

public mixin class Mixin1 {
    init{
        println("mixin1 init block");
    }
}

public mixin class Mixin2 {
    init{
        println("mixin2 init block");
    }
}

class Mixee extends Mixin1, Mixin2 {
    init{
        println("mixee init block");
    }
  }

function run() {
    Mixee{}
}


/*

output
-------

mixin1 init block
mixin2 init block
mixee init block

*/
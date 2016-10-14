
package examples.chapter8;

// Listing 8-7 – Extend multiple mixin classes

public mixin class Mixin1 {
    var a : Integer;
    public function getA(){
        return a;
    }
}
public mixin class Mixin2 {
    var b : Integer;
    public function getB(){
        return b;
    }
}
class Mixee extends Mixin1, Mixin2 {
    var c : Integer;
    public function getC(){
        return c;
    }
}
function run () {
    var obj = Mixee{
        a : 10;b:20;c:30;
    }
    println("a = {obj.getA()}  , b = {obj.getB()}  , c= {obj.getC()}"); // a = 10  , b = 20  , c= 30
}

/*
output
-------
a = 10  , b = 20  , c= 30

*/
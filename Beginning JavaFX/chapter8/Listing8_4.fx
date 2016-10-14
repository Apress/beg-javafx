
package examples.chapter8;

// Listing 8-4 – Usage of super keyword
class A{
   function fun1(){
       println("Base class Function-1");
   }
   function fun2(){
       println("Base class Function-2");
   }
}

class B extends A{
   function bFun1(){
       println("Derived class Function-1");
   }
   override function fun2(){
       super.fun2();
       println("Derived class Function-2");
   }
}
var obj:B=B{}
obj.fun2();

/*
  output
  ------
Base class Function-2
Derived class Function-2

*/
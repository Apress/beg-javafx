
package examples.chapter10;

//Listing 10-13. Implementing a stack using a sequence, by passing the sequence as a parameter to the function

var stack: Integer[];
function push(value : Integer){
    insert value into stack;
}

function pop( ) {
   if(sizeof stack == 0 ){
        println("Stack underflow");
    }else {
        delete stack[sizeof stack -1];
    }
}

function currentStackContent(stk : Integer[] ) {
    print(reverse stk);
}

function peak() {
    if(sizeof stack == 0 ){
        println("Sorry..! there are no elements in the stack.");
    }else {
        println("\n { stack[sizeof stack -1] } is the topmost element in the stack.");
    }
}

push(5);
push(3);
push(45);
push(25);
push(98);
println("Content of the stack");    // Content of the stack
currentStackContent(stack);        // [ 98, 25, 45, 3, 5 ]
pop();
peak();        //  25 is the topmost element in the stack.
pop();
println("Content of the stack");    // Content of the stack
currentStackContent(stack );        // [ 45, 3, 5 ]

/*
output
------
Content of the stack
[ 98, 25, 45, 3, 5 ]
 25 is the topmost element in the stack.
Content of the stack
[ 45, 3, 5 ]

*/
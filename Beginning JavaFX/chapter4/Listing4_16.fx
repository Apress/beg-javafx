
package examples.chapter4;


// Listing 4-16. Example of a conventional for expression with multiple in clauses\

var seq: String[];
for (x in [1..2]) {
    for (word in ["Richard", "Brian"]) {
        insert "{x} {word}" into seq;
    }
}

println(seq);

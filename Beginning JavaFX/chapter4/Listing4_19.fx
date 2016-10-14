/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package examples.chapter4;

// Listing 4-19. Example of an expression within a range expression

var seq = for (x in [1..5], y in [1..(x-1)]) {
println("X Val: {x}, Y Val: {y}, Mod Val: {x mod y}");
x mod y;
}
println(seq);

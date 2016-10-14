/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package examples.chapter4;

// Listing 4-13. Example of a conditional block expression

var flag: Boolean = true;
var x = if (flag) {
45 * 2 + 10;
} else {
90 * 2 + 20;
}
println(x);


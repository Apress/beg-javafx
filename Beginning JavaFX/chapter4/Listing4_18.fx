/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package examples.chapter4;

//v Listing 4-18. Example of the conventional way of using conditional validations in a for expression
var words = for (length in [3..6]) {
for (word in ['moose', 'wolf', 'turkey', 'bee']) {
        if (word.length() >= length)  {
        word
        } else {
            null
        }
    }
    };

println(words);
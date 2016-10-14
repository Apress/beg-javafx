/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package examples.chapter4;


//Listing 4-22. Example of using break within a for expression

var words: String[];
for (length in [3..6]) {
for (word in ['moose', 'wolf', 'turkey', 'bee']) {
    if (word.length() >= length)  {
        insert word into words;
    } else {
        break;
    }
}
};

println(words);
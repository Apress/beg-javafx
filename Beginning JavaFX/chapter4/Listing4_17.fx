
package examples.chapter4;


// Listing 4-17. Example of a for expression with conditional validation
var words = for (length in [3..6], word in ['moose', 'wolf', 'turkey', 'bee'] where
word.length() >= length) word;

println(words);


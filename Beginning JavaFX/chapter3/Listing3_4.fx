/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package examples;

/**
 * @author lawkp
 */

var str : String = "Scripting 'JavaFX' Language";
println("str {str}");    // ostr = Scripting 'JavaFX' Language
// find the length of the string.
println("str length = {str.length() }"); // str length = 18
// convert the string to uppercase
var upperCaseString = str.toUpperCase(); // UpperCase = SCRIPTING LANGUAGE
println("UpperCase = {upperCaseString}");
// convert the string to lowercase.
var lowerCaseString = upperCaseString.toLowerCase();   // lowerCase = scripting language
println("lowerCase = {lowerCaseString}");
// get the substring
var subString = str.substring(10); // subString = Language
println("subString = {subString}");

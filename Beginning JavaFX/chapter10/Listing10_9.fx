
package examples.chapter10;

// Listing 10-9. Different ways of inserting elements into a sequence dynamically

var nums = [0..10];
insert 65 after nums[sizeof nums+1];
insert 23 after nums[sizeof nums];
insert 77 after nums[sizeof nums - 1];
insert 21 before nums[5];
insert 97 after nums[0];
insert 6 before nums[-1];
insert 54 after nums[-2];
println(nums);        // [ 54, 6, 0, 97, 1, 2, 3, 4, 21, 5, 6, 7, 8, 9, 10, 65, 23, 77 ]

/*
output
------
[ 54, 6, 0, 97, 1, 2, 3, 4, 21, 5, 6, 7, 8, 9, 10, 65, 23, 77 ]
*/
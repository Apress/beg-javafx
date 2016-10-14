
package examples.chapter10;

//  Listing 10-3. Accessing the elements of a sequence

var teamMembers : String[] = [
    "Praveen", "Lawrence", "Girish","Rabi","Cheran","Srini","Blessan"
];
println("My team members");        // My team members
for( i in [0.. sizeof teamMembers - 1] )
println(teamMembers[i]);

/*
output
------
My team members
Praveen
Lawrence
Girish
Rabi
Cheran
Srini
Blessan

*/

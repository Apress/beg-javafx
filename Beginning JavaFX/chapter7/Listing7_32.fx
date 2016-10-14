
//Listing 7-32. Script-private class definition: Cup.fx
class Cup {
public var material: String;
}
var c = Cup { material: "ceramic" };
println ("From same script: {c.material}");

/*
output
-------
From same script: ceramic

*/
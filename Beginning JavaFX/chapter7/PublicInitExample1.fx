
//Listing 7-28. Defining public-int vars: PublicInitExample1.fx

public class PublicInitExample1 {
    public-init var y = 20;
    public-init var x = bind (2 * y);
}
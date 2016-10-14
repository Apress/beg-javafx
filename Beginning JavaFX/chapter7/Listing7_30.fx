
// Listing 7-30. A script with public-init vars defined: PublicInitExample1.fx
public class PublicInitExample1 {
    public-init var y = 20;
    public-init var x = bind (2 * y);
}
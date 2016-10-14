
package examples.chapter7;

//Listing 7-6. Defining the statics: AreaUtil.fx

public def PI: Number = 3.14;
public function getAreaOfCircle(radius: Number) {
    PI * radius * radius;
}
protected function getCircumferenceOfCircle(radius: Number) {
    2 * PI * radius;
}
package function getSurfaceAreaOfSphere(radius: Number) {
    4 * PI * radius * radius;
}

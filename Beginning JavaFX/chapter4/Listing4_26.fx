

package examples.chapter4;

// Listing 4-26 could also be written as follows

try {
    throw new java.lang.Exception("Demonstrating try-catch-finally");
} catch (any) {
    println("Exception thrown {any}");
} finally {
    println("finally reached");
}


#include <assert.h>
#include "math.h"

int main() {
    // Test addition
    assert(add(2, 3) == 5);
    // Test subtraction
    assert(subtract(5, 2) == 3);
    // Test multiplication
    assert(multiply(2, 4) == 8);
    // Test division
    assert(divide(10, 2) == 5.0f);
    // Test division by zero
    assert(divide(10, 0) == 0.0f);
    // Test factorial
    assert(factorial(5) == 120);
    assert(factorial(0) == 1);
    // Test power
    assert(power(2, 3) == 8);
    assert(power(5, 0) == 1);
    assert(power(2, -2) == 0);
    return 0;
}

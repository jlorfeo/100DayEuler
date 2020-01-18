import UIKit

// Task:
//  A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
//  a2 + b2 = c2
//  For example, 32 + 42 = 9 + 16 = 25 = 52.
//  There exists exactly one Pythagorean triplet for which a + b + c = 1000. Find the product abc such that a + b + c = n.

func findPythagoreanTriplet(with sum : Int) -> Int {
    var resultTriplet: (Int, Int, Int) = (0, 0, 0)
    // sum (eg. 1000) can be didived by 3 because realistically a<b therefore the solution for a shouldnt be greater than sum/3
    for a in 1...sum/3 {
        for b in a + 1...sum/2 {
            // Define c with the information we already have. This makes it easy to only check for the pythagorean ability
            let c = sum - a - b
            if a * a + b * b == c * c {
                resultTriplet = (a, b, c)
                break
            } else {
                continue
            }
        }
        if resultTriplet.0 != 0 {
            break
        }
    }
    return resultTriplet.0 * resultTriplet.1 * resultTriplet.2
}

findPythagoreanTriplet(with: 1000)

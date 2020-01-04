import UIKit

// Problem:
// If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
// Find the sum of all the multiples of 3 or 5 below 1000.


let numbers = Array<Int>(1..<1000)
let multipliers = numbers.filter { number -> Bool in
    number % 3 == 0 || number % 5 == 0
}
let solution = multipliers.reduce(0) { result, next -> Int in
    result + next
}



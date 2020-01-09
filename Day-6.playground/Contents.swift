import UIKit

//  Task:
//      The sum of the squares of the first ten natural numbers is,
//      12 + 22 + ... + 102 = 385
//      The square of the sum of the first ten natural numbers is,
//      (1 + 2 + ... + 10)2 = 552 = 3025
//      Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.
//      Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.


func getSumSquareDifference() -> Int {
    let digits = [Int](1...100)
    
    // Get squareOfSum
    let sumOfDigits = digits.reduce(0) { result, next in
        result + next
    }
    let squareOfSum = sumOfDigits * sumOfDigits
    
    // Get sumOfSquares
    let squares = digits.compactMap { element in
        element * element
    }
    let sumOfSquares = squares.reduce(0) { result, next in
        result + next
    }
    
    return sumOfSquares - squareOfSum
}

print(getSumSquareDifference())

import UIKit

//Task:
//The prime factors of 13195 are 5, 7, 13 and 29.
//What is the largest prime factor of the number 600851475143 ?

var allPrimes: [Int] = []

let division = 600851475143

func findGreatestPrime(from number: Int) -> Int {
    var max = 0
    var currentNumber = number
    var i = 2
    while currentNumber >= i {
        if number % i == 0 {
            max = i
            currentNumber = currentNumber / i
            continue
        }
        i += 1
    }
    return max
}

findGreatestPrime(from: 10)

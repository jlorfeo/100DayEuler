
// Task:
//  The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
//  Find the sum of all the primes below n.

import UIKit

func addPrimeNumbers(until number: Int) -> Int {
    let primes = findPrimeNumbers(until: number)
    let result = primes.reduce(0) { x, y in x + y }
    return result
}

func findPrimeNumbers(until number: Int) -> [Int] {
    var primes = [Int]()
    var boolArray = [Bool](repeating: true, count: number)

    // Sieve of Eratosthenes
    for i in 2..<number {
        if boolArray[i] == true {
            var multiplier = 1
            for j in stride(from: i * i, to: boolArray.count, by: i * multiplier) {
                boolArray[j] = false
                multiplier += 1
            }
        }
    }

    for i in 2..<boolArray.count {
        if boolArray[i] {
            primes.append(i)
        }
    }

    return primes
}

print(addPrimeNumbers(until: 2000000))

import UIKit

//Task:
//The prime factors of 13195 are 5, 7, 13 and 29.
//What is the largest prime factor of the number 600851475143 ?

var allPrimes: [Int] = []

let division = 600851475143

func findGreatestPrime(from number: Int) -> Int {
    var result: [Int] = [1]
    var currentNumber = number
    var i = 2
    while currentNumber >= i {
        if isPrime(for: i) {
            allPrimes.append(i)
            let currentResultState = isDividableByPrime(prime: i, for: currentNumber, result: result)
            result = currentResultState.0
            currentNumber = currentResultState.1
        }
        i += 1
    }
    return result.max()!
}

func isPrime(for number: Int) -> Bool {
    return allPrimes.filter { primeDigit -> Bool in
        number % primeDigit == 0
    }.count == 0
}

func isDividableByPrime(prime: Int, for number: Int, result: [Int]) -> ([Int], Int) {
    var new = result
    if number % prime == 0 {
        new.append(prime)
        return isDividableByPrime(prime: prime, for: number / prime, result: new)
    } else {
        return (new, number)
    }
}

print(findGreatestPrime(from: division))

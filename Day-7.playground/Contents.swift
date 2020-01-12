import UIKit

//  Task:
//      By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
//      What is the 10 001st prime number?

func findNthPrime(number: Int) {
    var primes = [Int]()
    // This is a theory of mine: To find the range where the nth primenumber can be found, multiply n with its sqrt!
    // For n < 100: multiply with 10
    let numberAsDouble = number >= 100 ? Double(number) : Double(number * 10)
    var boolArray = [Bool](repeating: true, count: Int(numberAsDouble * sqrt(numberAsDouble)))
    let border = Int(sqrt(Double(boolArray.count)))

    // Sieve of Eratosthenes
    for i in 2..<border {
        if boolArray[i] == true {
            var multiplier = 1
            for j in stride(from: i * i, to: boolArray.count, by: i * multiplier) {
                boolArray[j] = false
                multiplier += 1
            }
        }
    }

    for i in 0..<boolArray.count {
        if boolArray[i] {
            primes.append(i)
        }
    }

    // Remove 0
    primes.removeFirst()

    print(primes[number])
}


findNthPrime(number: 2)

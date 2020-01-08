import UIKit

//  Task:
//      2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
//      What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?


func getSmallestDividend() -> Int {
    var currentDivisorPosition = 0
    let divisors = Array<Int>(1...20).filter { digit in !20.isMultiple(of: digit)}
    var dividend = 2520
    while currentDivisorPosition < divisors.count {
        if dividend.isMultiple(of: divisors[currentDivisorPosition]){
            currentDivisorPosition += 1
            continue
        }
        else {
           currentDivisorPosition = 0
           dividend += 1
        }
    }
    return dividend
}

print(getSmallestDividend())

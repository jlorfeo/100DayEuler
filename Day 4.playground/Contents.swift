import UIKit

//  Task:
//      A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
//      Find the largest palindrome made from the product of two 3-digit numbers.

func getLargestPalindrome() -> Int {
    var palindromes: [Int] = []
    var digits = [Int](900...999)
    for i in 900...999 {
        let multiplies = digits.filter { multiplier -> Bool in
            isPalimdrome(for: i * multiplier)
        }
        let palims = multiplies.compactMap { multiplier in
            i * multiplier
        }
        palindromes.append(contentsOf: palims)
        digits.removeFirst()
    }
    return palindromes.max()!
}

func isPalimdrome(for number: Int) -> Bool {
    let numberAsString = String(number)
    let reversedNumberAsArray = numberAsString.reversed()
    return numberAsString.elementsEqual(reversedNumberAsArray)
}

print(getLargestPalindrome())

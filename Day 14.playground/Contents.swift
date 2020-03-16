import UIKit

var greatestChainLength = 0
var collatzLengthCache = [Int:Int]()

func findLongestCollatzSequence(for digit: Int) -> Int {
    var counter = 1
    while counter < digit {
        let length = findCollatzSequenceLength(for: counter)
        collatzLengthCache.updateValue(length, forKey: counter)
        counter = counter + 1
    }
    return collatzLengthCache.max(by: { (val1, val2) -> Bool in
        val1.value < val2.value
        })!.key
}

private func findCollatzSequenceLength(for digit: Int, currentChainLength: Int = 0) -> Int {
    if digit != 1 {
        if var length = collatzLengthCache[digit] {
            length = length + currentChainLength
            if length > greatestChainLength {
                greatestChainLength = length
            }
            return length
        }
        return findCollatzSequenceLength(for: check(sequence: digit), currentChainLength: currentChainLength + 1)
    } else {
        if currentChainLength > greatestChainLength {
            greatestChainLength = currentChainLength
        }
        return currentChainLength
    }
}

private func check(sequence: Int) -> Int {
    if sequence.isMultiple(of: 2) {
        return sequence / 2
    } else {
        return 3 * sequence + 1
    }
}

print(findLongestCollatzSequence(for: 54512))

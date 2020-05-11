import UIKit

/**
 Task: 
 2 POW 15 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.
 What is the sum of the digits of the number 2 POW 1000?
 */

extension LosslessStringConvertible {
    var string: String { .init(self) }
}

extension Numeric where Self: LosslessStringConvertible {
    var digits: [Int] { string.digits }
}

extension StringProtocol  {
    var digits: [Int] { compactMap(\.wholeNumberValue) }
}

func calculateSum(of base: Double, power: Double) -> Int {
    let digits = pow(base, power)
    let tmp = String(format: "%.1f", digits)
    let newDouble = tmp.digits
    return newDouble.reduce(0,+)
}

calculateSum(of: 2, power: 15) // 26
calculateSum(of: 2, power: 128) // 166
calculateSum(of: 2, power: 1000) // 1366

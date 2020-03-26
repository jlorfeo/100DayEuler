import UIKit

/*
 Challenge 15: Lattice paths
 Starting in the top left corner of a 2×2 grid, and only being able to move to the right and down, there are exactly 6 routes to the bottom right corner.
 How many such routes are there through a 20×20 grid?
 */

func latticePath(for gridSize: Int) {
    var tmp = gridSize
    print(calculateBinominalCoefficient(n: 2*gridSize, k: &tmp))
}

func calculateBinominalCoefficient( n: Int, k: inout Int) -> Int {
    if 2*k > n {
        k = n - k
    }
    var result = 1
    for i in 1..<k {
       result = result * (n-k+i)/i
    }
    
    return result * 2
}

latticePath(for: 20)

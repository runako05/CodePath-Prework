//: [Previous](@previous)

//: ## Checkpoint 3: Kth Smallest Element in the Array
import Foundation

class Solution {
    func kthsmallest(_ A: [Int], _ B: inout Int) -> Int {
        let sorted = A.sorted()
        return sorted[B-1]
    }
}

//: [Next](@next)

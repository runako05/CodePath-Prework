//: [Previous](@previous)

//: ## Checkpoint 5: Longest Consecutive Sequence
import Foundation

func longestConsecutive(_ A: [Int]) -> Int {
    let sortedA = Set(A).sorted()
    var longest = 1
    var newLongest = 1
    for (index, num) in sortedA.enumerated() {
        let j = index + 1
        guard j < sortedA.count else { break }
        
        if sortedA[j] == num + 1 {
            newLongest += 1
        } else {
            longest = max(longest, newLongest)
            newLongest = 1
        }
    }
    
    return max(longest, newLongest)
}

//: [Next](@next)

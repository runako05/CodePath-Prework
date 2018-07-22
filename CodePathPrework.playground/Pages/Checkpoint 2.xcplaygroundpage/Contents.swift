//: [Previous](@previous)
//: ## Checkpoint 2: Pretty Print

import Foundation

class Solution {
    func prettyPrint(_ A: Int) -> [[Int]] {
        var result = [[1]]
        let min = 2
        
        guard A >= min else { return result }
        
        
        for j in min...A {
            let count = (j-1) * 2 - 1
            for i in 0...count where i < result.count {
                let middle = result[i]
                result[i] = [j] + middle + [j]
            }
            let ends = buildRepeatingArray(j)
            result.insert(ends, at: 0)
            result.append(ends)
        }
        return result
    }
    
    private func buildRepeatingArray(_ num: Int) -> [Int] {
        var result = [Int]()
        let count = num * 2 - 1
        for _ in 0..<count {
            result.append(num)
        }
        return result
    }
}

//: [Next](@next)

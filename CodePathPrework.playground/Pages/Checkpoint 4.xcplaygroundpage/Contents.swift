//: [Previous](@previous)

//: ## Checkpoint 4: NEXTGREATER
import Foundation

func nextGreater(_ A: inout [Int]) -> [Int] {
    var newArray = [Int]()
    let noVal = -1
    
    for i in 0..<A.count {
        var j = i + 1
        while j < A.count {
            if A[j] > A[i] {
                newArray.append(A[j])
                break
            } else {
                j += 1
            }
        }
        if j == A.count {
            newArray.append(noVal)
        }
    }
    return newArray
}

//: [Next](@next)

import UIKit
import Foundation

func calculator(n1: Int, n2: Int, operation: (Int, Int) -> Int) -> Int {
    return operation(n1, n2)
}

// shortest closure
print(calculator(n1: 2, n2: 3) { $0 * $1 })


// normal closure
func multiply(no1: Int, no2: Int) -> Int {
    return no1 * no2
}

calculator(n1: 2, n2: 3, operation: multiply)


let array = [6, 2, 3, 9, 4, 1]
print(array.map{$0 + 1})
print(array.map{"\($0)"})



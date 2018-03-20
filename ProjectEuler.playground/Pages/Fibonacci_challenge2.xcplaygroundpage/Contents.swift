//: [Previous](@previous)

import Foundation
var fibonacciSum : Int = 0
var fibonacciArray : [Int] = [1, 1]

while true {
    var currentValue = fibonacciArray[fibonacciArray.count - 1] + fibonacciArray[fibonacciArray.count - 2]
    if currentValue < 4000000 {
        fibonacciArray.append(currentValue)
        if fibonacciArray[fibonacciArray.count - 1] % 2 == 0 {
            fibonacciSum += fibonacciArray[fibonacciArray.count - 1]
        }
    } else {
        break
    }
    
}

print(fibonacciArray)
print(fibonacciSum)






//: [Previous](@previous)

import Foundation



func fibonacci(_ n: Int) -> Int {
    if n == 0  || n == 1 {
        return 1
    }
    
    return fibonacci(n - 1) + fibonacci(n - 2)
}

fibonacci(5)

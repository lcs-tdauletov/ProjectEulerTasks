//: Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"

var divisibleInteger : [Int] = []
var total = 0
for i in 1...1001 {
    if i % 3 == 0 || i % 5 == 0{
        divisibleInteger.append(i)
    }
}
divisibleInteger
for z in 0...divisibleInteger.count-1 {
    total += divisibleInteger[z]
}

print(total)



import Foundation

var cur: Int = 1
var n: Int = 0

while true {
    
    var divcnt: Int = 0
    
    n += cur
    
    for j in 1...n {
        if n % j == 0 {
            divcnt += 1
        }
    }
    
    if divcnt >= 150 {
        print(n)
        print(divcnt)
        break
    }
    
    cur += 1
}


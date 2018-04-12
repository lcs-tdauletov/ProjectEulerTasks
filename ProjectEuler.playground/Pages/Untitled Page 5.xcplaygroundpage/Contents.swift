import Foundation

var megasum: Int = 0

for i in 2...10000 {
    var sum = 0
    for j in 1..<i {
        if i % j == 0 {
            sum += j
        }
    }
    
    var newSum = 0
    for j in 1..<sum {
        if sum % j == 0 {
            newSum += j
        }
    }
    
    if i == newSum {
        print(i)
        megasum += i
    }
}

print(megasum)

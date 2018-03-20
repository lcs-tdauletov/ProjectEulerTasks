import Foundation


var empty : [Int] = []
var varForEmpty = 0
func isPrime(_ n: Int) -> Bool {
    if n <= 1 {
        return false
    }
    if n <= 3 {
        return true
    }
    var i = 2
    while i*i <= n {
        if n % i == 0 {
            return false
        }
        i += 1
    }
    return true
}

while empty.count < 10_001 {
    if isPrime(varForEmpty) {
        empty.append(varForEmpty)
    }
    varForEmpty += 1
}

print(empty[10_000])



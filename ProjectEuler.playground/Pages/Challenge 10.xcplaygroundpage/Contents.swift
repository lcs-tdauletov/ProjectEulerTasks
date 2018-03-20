
import Foundation

var empty : [Int] = [2]
var varForEmpty = 0

var sum = 0
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

while empty[empty.count-1] < 2_000_000 {
    if isPrime(varForEmpty) {
        empty.append(varForEmpty)
        sum += varForEmpty
    }
    varForEmpty += 1
}
print(sum)
print(empty)




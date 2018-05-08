import Foundation

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
var circularPrime = 0

while circularPrime < 1_000_000 {
    var stringForCirularPrime = String(circularPrime)
    var charArrayCircular = Array(stringForCirularPrime)
    for i in 0...charArrayCircular - 1 {
        if isPrime(circularPrime) {
            let currentValue = charArrayCircular[i]
            charArrayCircular[i] = charArray[i+1]
            
        }
    }
    
    circularPrime += 1
}

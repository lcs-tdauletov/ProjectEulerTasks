import Foundation




var counter = 1
var side = 1
var primeCounter = 0
var edgeCounter = 0
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

while true {
     let squareroot = sqrt(Double(counter))
     let squareOOrt = String(squareroot)
     let squareSwas : String? = squareOOrt
     guard let squareStuff = Int(squareSwas) else {
        continue
     }
    
    if squareStuff == Int(squareroot) && squareStuff != 1 {
        side += 2
        edgeCounter += 4
    }
    if isPrime(squareStuff * squareStuff - (side - 1)) || isPrime(squareStuff * squareStuff - 2 * (side - 1)) || isPrime(squareStuff * squareStuff - 3 * (side - 1)) {
        primeCounter += 1
    }
    
    
    
    if primeCounter != 0 && edgeCounter != 0 && (primeCounter / edgeCounter) * 100 < 10 {
        print(side)
        break
    }
    counter += 1
}


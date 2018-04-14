import Foundation
func factorialCalculator(_ implantation: Int) -> Int {
    if implantation == 0 {
        return 1
    } else {
        return implantation * factorialCalculator(implantation - 1)
    }
}

var globalSum = 0
var theCandidate = 0
while theCandidate < 2540160{
    var stringForTheCandidate = String(theCandidate)
    var charArrayForString : [Character] = Array(stringForTheCandidate)
    var localSum = 0
    for i in 0...charArrayForString.count - 1 {
        localSum += factorialCalculator(Int(String(charArrayForString[i]))!)
        
    }
    if localSum == theCandidate {
        globalSum += localSum
    }
    theCandidate += 1
}
print(globalSum - 3)

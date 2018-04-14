import Foundation
var sum = 0
func perfectNumberIndentifier( _ givenInput: Int) -> Bool {
    var givenInputVariable = givenInput
    if givenInputVariable > 32_500  || givenInputVariable < 2 {
        print("Nah, brother, you should go to Gordon with these demands")
        return false
    }
    for i in 1...givenInputVariable {
        if givenInputVariable % i == 0 {
            sum += i
        }
    }
    if sum == givenInputVariable * 2 {
        print("\(givenInputVariable) is a perfect number")
    } else if sum < givenInputVariable * 2 {
        print("\(givenInputVariable) is a deficient number")
    } else if sum > givenInputVariable * 2 {
        print("\(givenInputVariable) is an abundant number")
    }
    return true
}
perfectNumberIndentifier(10)





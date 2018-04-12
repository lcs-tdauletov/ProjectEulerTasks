import Foundation

var lexRaw = "3210456789"
var lexArray : [Character] = Array(lexRaw)
while true {
for i in 0...lexArray.count - 2 {
    if Character(String(lexArray[i+1])) < Character(String(lexArray [i])) {
        var currentNumber = lexArray[i+1]
        lexArray[i+1] = lexArray[i]
        lexArray[i] = currentNumber
    }
}
}
print(lexArray)


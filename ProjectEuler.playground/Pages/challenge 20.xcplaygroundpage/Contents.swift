import Foundation

var n = 1
for i in 1...20{
    n *= i

}
print(n)
var stringN = String(n)
var charArray : [Character] = Array(stringN)
var summationOfCharArray : Int64 = 0
for z in 0...charArray.count - 1 {
    summationOfCharArray += Int64(String(charArray[z]))!
}
print(summationOfCharArray)

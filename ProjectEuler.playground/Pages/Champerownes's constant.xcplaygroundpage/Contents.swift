import Foundation

var charArray : [Character] = ["0","."]
var shaytan = 1
while charArray.count < 1_000 {
    
    charArray.append(Character(String(shaytan)))
    shaytan += 1
}
let shaytanMult1 = Int(String(charArray[2]))! * Int(String(charArray[12]))! * Int(String(charArray[102]))!

print(shaytanMult1)


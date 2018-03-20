import Foundation

var max: Int = 0

for i in 100...999 {
    for j in 100...999 {
        var n = i * j
        var s = String(n)
        var charArray : [Character] = Array(s)
        if charArray.count == 6 {
            if (charArray[0] == charArray[5]) && (charArray[1] == charArray[4]) && (charArray[2] == charArray[3]) {
                if max < n {
                    max = n
                } else {
                    continue
                }
            }
        } else if charArray.count == 5 {
            if (charArray[0] == charArray[4]) && (charArray[1] == charArray[3]) {
                if max < n {
                    max = n
                } else {
                    continue
                }
            }
            
        }
    }
}

print(max)

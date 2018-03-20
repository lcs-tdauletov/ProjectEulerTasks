import Foundation

var max: Int = 0
var numb: Int = 0

for i in 1...1000000 {
    var cnt: Int = 0
    var n: Int = i
    while n != 1 {
        if n % 2 == 0 {
            n /= 2
        } else {
            n = n * 3 + 1
        }
        cnt += 1
    }
    cnt += 1
    
    if max < cnt {
        max = cnt
        numb = i
    }
}

print(max)
print(numb)

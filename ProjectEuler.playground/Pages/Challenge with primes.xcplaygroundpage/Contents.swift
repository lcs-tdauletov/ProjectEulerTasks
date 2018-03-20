import Foundation


var empty : [Int] = []
var i = 600851475143
while i > 0 {
    if 600851475143 % i == 0 {
        empty.append(i)
    }
    i -= 1
}

print(empty)

for z in 0...empty.count - 1 {
    var cnt = 0
    for y in 1...empty[z] {
            if empty[z] % y == 0 {
                cnt += 1
            }
        
    }
    
    if cnt == 2 {
        print(empty[z])
        break
    }
}





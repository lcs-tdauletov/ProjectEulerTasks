
import Foundation

var randomArray : [Int] = [5, 2, 7, 9, 10, 1, 3, 4, 8, 6]

for _ in 0...randomArray.count - 1{
    for j in 0...randomArray.count - 2 {
        if randomArray[j+1] < randomArray[j]  {
            let currentMember = randomArray[j+1]
            randomArray[j+1] = randomArray[j]
            randomArray[j] = currentMember
        }
    }
}
print(randomArray)




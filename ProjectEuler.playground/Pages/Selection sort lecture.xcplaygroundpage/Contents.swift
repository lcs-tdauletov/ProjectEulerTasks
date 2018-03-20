import Foundation

var randomArray1 : [Int] = [5, 2, 8, 0, 1, 3, 9, 4, 7, 6]

for i in 0...randomArray1.count - 1 {
    var minIndex = i
    for j in stride(from: i + 1, through: randomArray1.count - 1, by: 1) {
        if randomArray1[minIndex] > randomArray1[j] {
            minIndex = j
        }
    }
    if minIndex != i {
        let currentValue = randomArray1[i]
        randomArray1[i] = randomArray1[minIndex]
        randomArray1[minIndex] = currentValue
    }
    
}

print(randomArray1)



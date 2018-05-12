import Foundation

var emptyRandomArray : [Int] = [3, 1, 9, 18, 87, 65, 17, 5, 8, 54]

for i in 0...emptyRandomArray.count - 1 {
    for j in 0...emptyRandomArray.count - 2 {
        if emptyRandomArray[j] > emptyRandomArray[j+1] {
            let currentTerm = emptyRandomArray[j+1]
            emptyRandomArray[j+1] = emptyRandomArray[j]
            emptyRandomArray[j] = currentTerm
        }
    }
}
print(emptyRandomArray)

func search(_ array: [Int], _ numb: Int) -> Int? {
    var lower: Int = 0
    var upper: Int = array.count
    
    while lower < upper {
        var mid = lower + (upper - lower) / 2
        
        if array[mid] == numb {
            return mid
        } else if array[mid] < numb {
            lower = mid + 1
        } else {
            upper = mid
        }
    }
    
    return nil
}

print(search(emptyRandomArray, 87)!)

















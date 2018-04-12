import Foundation

var IntArray : [Int] = [4, 3, 19, 21, 28, 9, 10, 18]

func search(_ array: [Int], _ num: Int) -> Int? {
    for i in 0...IntArray.count - 1 {
        if IntArray[i] == num {
            return i
        }
    }
    return nil
}
search(IntArray, 2)

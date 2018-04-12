import Foundation

var num : Int = 232792550
var ans: Bool = false

outer: while true {
    inner: for i in 1...20{
                if num % i == 0 {
                    ans = true
                } else {
                    ans = false
                    break inner
                }
        }
    
            if ans {
                print(num)
                break outer
        }
    
    num += 1
}

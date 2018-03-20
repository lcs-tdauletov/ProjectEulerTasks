import Foundation

outer: for c in 1...1_000 {
    for b in 1...c {
        for a in 1...b {
            if ((a*a + b * b == c * c) && a + b + c == 1000) {
                print( a * b * c)
                break outer
            }
        }
    }
}


// Question: 111, 121??



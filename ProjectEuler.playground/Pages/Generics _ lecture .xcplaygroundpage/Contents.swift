import Foundation

var a: Double = 5
var b: Double = 7.6

func swap<T> (_ a: inout T, _ b: inout T) {
    let tmp = a
    a = b
    b = tmp
}

swap(&a, &b)
print(a, b)


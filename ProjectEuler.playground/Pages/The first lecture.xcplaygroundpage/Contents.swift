import Foundation

func hello_world (_ numberOfTimes: Int) -> String {
    if numberOfTimes == 1 {
        return "hello\(numberOfTimes)"
    }
    
    return hello_world(numberOfTimes - 1)
}

print(hello_world(10))


func derivativeCalculator (input: String ) -> String {
    var k : Double = 0
 
}

import Foundation

class Car {
    var name : String = ""
    var speed : Int = 0
    var age : Int = 0
    var runLength : Int = 0

    init (_ name: String, _ speed: Int, _ age: Int, _ runLength: Int) {
    self.name = name
    self.speed = speed
    self.age = age
    self.runLength = runLength
}

func drive () {
    runLength += 1
}

func getInfo () {
    print("\(self.name) can move at a maximum speed of \(self.speed) and is \(self.age) years old")
}
}
var zhigul = Car("Zhigul", 25, 1, 3)
zhigul.getInfo()
print(zhigul.name)


var lambo = Car("Lamborgini", 200, 200, 3_000_000 )
print(lambo.name)


for i in 1...200 {
    lambo.drive()
}
print(lambo.runLength)


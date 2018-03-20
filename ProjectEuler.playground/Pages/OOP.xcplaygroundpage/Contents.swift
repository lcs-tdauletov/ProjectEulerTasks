import Foundation

class Student {
    var name: String = ""
    var age: Int = 0
    
    init(_ name: String, _ age: Int) {
        self.name = name
        self.age = age
    }
    
    func sayHello() {
        print("Hello, my name is \(self.name)")
    }
    
    static func stud() {
        print("Hello I'm student")
    }
}

var almat = Student("Almat", 27)
almat.sayHello()
print(almat.name)

var rifat = Student("Rifat", 20)
rifat.sayHello()

Student.stud()

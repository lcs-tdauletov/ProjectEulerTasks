import Foundation

class Transport {
    var type: String = "Transport"
    var size: String = "Null"
    
    init (_ type: String, _ size: String) {
        self.type = type
        self.size = size
    }
}

class Car : Transport {
    override init (_ type: String, _ size: String) {
        super.init(type, size)
    }
    
    func show() {
        print("\(self.type) & \(self.size)")
    }
}

var vehicle = Car("Car", "Medium")

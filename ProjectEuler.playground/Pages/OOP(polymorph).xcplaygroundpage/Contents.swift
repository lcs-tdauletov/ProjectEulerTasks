import Foundation

class Point {
    var x: Int = 0
    var y: Int = 0
    
    init(_ x: Int, _ y: Int) {
        self.x = x
        self.y = y
    }
}

class d2Point : Point {
    override init(_ x: Int, _ y: Int) {
        super.init(x, y)
    }
    
    func sum (_ scndArg: d2Point) -> d2Point {
        let xSum = self.x + scndArg.x
        let ySum = self.y + scndArg.y
        var ans = d2Point(xSum, ySum)
        return ans
    }
}

class d3Point : Point {
    var z: Int = 0
    
    init(_ x: Int, _ y: Int, _ z: Int) {
        super.init(x, y)
        self.z = z
    }
    
    func sum (_ scndArg: d3Point) -> d3Point {
        let xSum = self.x + scndArg.x
        let ySum = self.y + scndArg.y
        let zSum = self.z + scndArg.z
        var ans = d3Point(xSum, ySum, zSum)
        return ans
    }
}

var d2pt = d2Point(2, 2)
var d3pt = d3Point(3, 4, 5)

var d2pt2 = d2Point(3, 3)
var newans = d2pt.sum(d2pt2)
print("[\(newans.x), \(newans.y)]")





class Fraction {
    var numerator: Int = 1
    var denominator: Int = 1
    
    
    init ( _ numerator: Int, _ denominator: Int) {
        self.numerator = numerator
        self.denominator = denominator
    }
    
    func showPrint () {
        print("\(self.numerator)/\(self.denominator)")
    }
    
    func fractionSum (_ n2: Fraction)-> Fraction {
        
        var prodDenominator = self.denominator * n2.denominator
        var firstNumerator = prodDenominator / self.numerator
        var secondNumerator = prodDenominator / n2.numerator
        var commonNumerator = firstNumerator + secondNumerator
        var ans = Fraction(commonNumerator, prodDenominator)
        
        return ans
    }

}

var n1 = Fraction(1,3)
var n2 = Fraction(7, 10)

n1.showPrint()
n2.showPrint()

var n3 = n1.fractionSum(n2)
n3.showPrint()






class Account {
    var ownerName : String = ""
    var moneyAmount : Int = 1_001
    init (_ ownerName : String, _ moneyAmount: Int) {
        self.ownerName = ownerName
        self.moneyAmount = moneyAmount
    }
    
    func buy (_ t:Toy) {
        self.moneyAmount -= t.price
        print("Krasava. Kupil")
    }
    
    
}

class Toy {
    var name : String
    var price : Int
    
    init(_ name: String, _ price: Int) {
        self.name = name
        self.price = price
    }
}

var t = Toy("Car", 99)
var a = Account("Borat", 200)

a.buy(t)
print(a.moneyAmount)

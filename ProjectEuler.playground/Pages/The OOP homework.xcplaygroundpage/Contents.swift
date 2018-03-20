import Foundation

class Toy {
    var name : String = ""
    var price : Int = 0
    var theAppropriateAge : Int = 7
    
    init (_ name: String, _ price: Int, _ theAppropriateAge: Int){
        self.name = name
        self.price = price
        self.theAppropriateAge = theAppropriateAge
    }
}


class TeddyBear: Toy {
    override init(_ name: String, _ price: Int, _ theAppropriateAge : Int) {
        super.init(name, price, theAppropriateAge)
    }
    func show() {
        print("\(self.name) & \(self.price)")
    }
}

class Account {
    var ownerName : String = ""
    var theMoneyAmount : Int = 0
    var theAge : Int = 10
    init(_ ownerName : String, _ theMoneyAmount : Int, _ theAge: Int) {
        self.ownerName = ownerName
        self.theMoneyAmount = theMoneyAmount
        self.theAge = theAge
    }
    
    func buy (_ TeddyBear: TeddyBear) {
        self.theMoneyAmount -= TeddyBear.price
        print("Thank you \(self.ownerName), for purchasing \(TeddyBear.name).")
        if self.theAge != TeddyBear.theAppropriateAge {
            print("Because of the age mismatch - you are \(self.theAge) and \(TeddyBear.name) is supposed to be for age \(TeddyBear.theAppropriateAge) - you might not enjoy it as much.")
        }

    }
}
var theWhiteBear = TeddyBear("Theodore", 102, 8)

var theConsumer = Account("Adam", 200, 9)

theConsumer.buy(theWhiteBear)



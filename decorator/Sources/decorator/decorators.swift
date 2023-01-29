protocol Condiment: Beverage {
    var base: Beverage { get }
}

extension Condiment { 
    func cost() -> Double {
        return base.cost() + price
    }

    func describe() -> String {
        return base.describe() + description
    }
}

class Milk: Condiment {
    var base: Beverage 
    var price: Double = 0.10 
    var description: String = " steamed milk"

    init(base: Beverage) {
        self.base = base
    }

}

class Mocha: Condiment {
    var base: Beverage 
    var price: Double = 0.20
    var description: String = " mocha"

    init(base: Beverage) {
        self.base = base
    }

}

class Soy: Condiment {
    var base: Beverage 
    var price: Double = 0.15
    var description: String = " soybeaned"

    init(base: Beverage) {
        self.base = base
    }
}

class Whip: Condiment {
    var base: Beverage 
    var price: Double = 0.10
    var description: String = " whipping creamed"

    init(base: Beverage) {
        self.base = base
    }
}

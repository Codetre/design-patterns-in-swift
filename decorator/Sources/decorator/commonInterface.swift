enum Size {
    case toll, grande, venti
}

protocol Beverage {
    var price: Double { get }
    var description: String { get }

    func cost() -> Double
    func describe() -> String 
}

extension Beverage {
    func cost() -> Double { return price }
    func describe() -> String { return description }
}

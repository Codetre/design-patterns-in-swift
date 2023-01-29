class Duck {
    var flyingWay: FlyStrategy = NullFly()

    func fly() {
        flyingWay.act()
    }
}

class RubberDuck: Duck {
    init(flyingWay: FlyStrategy) {
        super.init()
        self.flyWay = flyWay
    }
}

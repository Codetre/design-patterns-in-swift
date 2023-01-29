// Protocol acts as interface which Swift doesn't support. 
protocol FlyStrategy {
    func act() -> Void 
}

class NullFly: FlyStrategy {
    func act() {}
}

class UnableFly: FlyStrategy {
    func act() {
        print("Cannot fly.")
    }
}

class WithWings: FlyStrategy {
    func act() {
        print("Fly with wings.")
    }
}

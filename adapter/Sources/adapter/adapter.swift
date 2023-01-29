class AdapterAsDuck: Duck {
    var adaptee: Turkey

    init(turkey: Turkey) {
        adaptee = turkey
    }

    func quack() {
        adaptee.gobble()
    }

    func fly() {
        for _ in 1...5 {
            adaptee.fly()
        }
    }
}

class AdapterAsTurkey: Turkey {
    var adaptee: Duck

    init(duck: Duck) {
        adaptee = duck
    }

    func gobble() {
        adaptee.quack()
    }

    func fly() {
        adaptee.fly()
    }
}


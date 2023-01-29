// Interface for duck
protocol Quackable: Observable {
    var observable: QuackObservable { get }
    func quack()
    func makeItselfObservable()
    // func register(observer: Observable)
    // func notify()
}

extension Quackable {
    func makeItselfObservable() {
        self.observable.subject = self
    }
}

// Implementations
class MallardDuck: Quackable {
    var observable: QuackObservable

    init() {
        observable = QuackObservable()
    }

    func register(observer: Observer) {
        observable.register(observer: observer)
    }
    
    func notify() {
        observable.notify()
    }

    func quack() {
        print("Quack(I'm mallard)")
        notify()
    }
}

class RedheadDuck: Quackable {
    var observable: QuackObservable

    init() {
        observable = QuackObservable()
    }

    func register(observer: Observer) {
        observable.register(observer: observer)
    }
    
    func notify() {
        observable.notify()
    }

    func quack() {
        print("Quack(I'm redhead)")
        notify()
    }
}

class DuckCall: Quackable {
    var observable: QuackObservable

    init() {
        observable = QuackObservable()
    }

    func register(observer: Observer) {
        observable.register(observer: observer)
    }
    
    func notify() {
        observable.notify()
    }

    func quack() {
        print("Kwak(I'm duck caller)")
        notify()
    }
}

class RubberDuck: Quackable {
    var observable: QuackObservable

    init() {
        observable = QuackObservable()
    }

    func register(observer: Observer) {
        observable.register(observer: observer)
    }
    
    func notify() {
        observable.notify()
    }

    func quack() {
        print("Squeak(I'm rubber)")
        notify()
    }
}

// Composite pattern
class Flock: Quackable {
    var observable: QuackObservable
    var quackers: [Quackable] = []

    init() {
        observable = QuackObservable()
    }

    func register(observer: Observer) {
        observable.register(observer: observer)

        var iterator = quackers.makeIterator()
        while let quacker = iterator.next() {
            quacker.register(observer: observer)
        }

    }
    
    func notify() {
        observable.notify()
    }

    func add(_ child: Quackable) {
        quackers.append(child)
    }

    func quack() {
        var iterator = quackers.makeIterator()
        while let quacker = iterator.next() {
            quacker.quack()
        }
    }
}

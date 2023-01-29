protocol Observer {
    func update(target: Observable)  // Pull from publisher
}

protocol Observable {
    func register(observer: Observer)
    func notify()  // Push to subscribers
}

class DummyObservable: Observable {
    func register(observer: Observer) {
        print("Dummy observable cannot register")
    }
    func notify() {
        print("Dummy observable cannot notify")
    }
}

class QuackObservable: Observable {
    var observers: [Observer] = []
    var subject: Observable = DummyObservable()

    func register(observer: Observer) {
        observers.append(observer)
    }

    func notify() {
        var iterator = observers.makeIterator()
        while let observer = iterator.next() {
            observer.update(target: subject)
        }
    }
}

class Quackologist: Observer {
    func update(target: Observable) {
        print("Quackologist: \(target) just quacked.")
    }
}

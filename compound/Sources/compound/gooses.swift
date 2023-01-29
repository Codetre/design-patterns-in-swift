class CamouflageAsDuck: Quackable {
    let core: Goose 
    let observable: QuackObservable

    init(_ core: Goose) {
        self.core = core
        observable = QuackObservable()
    }

    func register(observer: Observer) {
        observable.register(observer: observer)
    }
    
    func notify() {
        observable.notify()
    }

    func quack() {
        core.honk()
    }
}

class Goose {
    func honk() {
        print("Honk(I'm goose)")
    }
}

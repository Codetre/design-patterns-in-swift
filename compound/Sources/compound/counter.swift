class QuackCounter: Quackable {
    let decoratee: Quackable
    static var count: Int = 0
    let observable: QuackObservable

    func register(observer: Observer) {
        observable.register(observer: observer)
    }
    
    func notify() {
        observable.notify()
    }

    init(_ decoratee: Quackable) {
        self.decoratee = decoratee
        observable = QuackObservable()
    }

    func quack() {
        QuackCounter.count += 1
        decoratee.quack()
        notify()
    }
}

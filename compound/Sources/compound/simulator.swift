class DuckSimulator {
    let factory = CountableDuckFactory()

    func simulate() {
        let flock1 = Flock()
        flock1.makeItselfObservable()

        var bird: Quackable = factory.makeMallard()
        bird.makeItselfObservable()
        flock1.add(bird)

        bird = factory.makeRedhead()
        bird.makeItselfObservable()
        flock1.add(bird)

        bird = factory.makeCaller()
        bird.makeItselfObservable()
        flock1.add(bird)

        bird = factory.makeRubber()
        bird.makeItselfObservable()
        flock1.add(bird)

        bird = factory.makeFake()
        bird.makeItselfObservable()
        flock1.add(bird)

        let flock2 = Flock()
        flock2.makeItselfObservable()
        for _ in 1...4 {
            bird = factory.makeMallard()
            bird.makeItselfObservable()
            flock2.add(bird)
        }

        let flock = Flock()
        flock.makeItselfObservable()
        flock.add(flock1)
        flock.add(flock2)

        let quackologist = Quackologist()
        flock.register(observer: quackologist)
        simulate(on: flock)

        print("Count: \(QuackCounter.count)")
    }

    func simulate(on object: Quackable) {
        object.quack()
    }
}


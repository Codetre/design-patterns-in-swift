protocol DuckFactory {
    func makeMallard() -> Quackable
    func makeRedhead() -> Quackable
    func makeCaller() -> Quackable
    func makeRubber() -> Quackable
    func makeFake() -> Quackable
}

extension DuckFactory {
    func makeFake() -> Quackable {
        return CamouflageAsDuck(Goose())
    }
}


class BasicDuckFactory: DuckFactory {
    func makeMallard() -> Quackable {
        return MallardDuck()
    }

    func makeRedhead() -> Quackable {
        return RedheadDuck()
    }

    func makeCaller() -> Quackable {
        return DuckCall()
    }

    func makeRubber() -> Quackable {
        return RubberDuck()
    }
}

class CountableDuckFactory: DuckFactory {
    func makeMallard() -> Quackable {
        return QuackCounter(MallardDuck())
    }

    func makeRedhead() -> Quackable {
        return QuackCounter(RedheadDuck())
    }

    func makeCaller() -> Quackable {
        return QuackCounter(DuckCall())
    }

    func makeRubber() -> Quackable {
        return QuackCounter(RubberDuck())
    }
}

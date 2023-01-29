class MallardDuck: Duck {
    func quack() {
        print("Quack")
    }

    func fly() {
        print("I'm flying")
    }
}

class WildTurkey: Turkey {
    func gobble() {
        print("Gobble gobble")
    }

    func fly() {
        print("I'm flying a short distance")
    }
}

print("-- Turkey acts like a duck:")
let turkeylikeDuck = AdapterAsDuck(turkey: WildTurkey())
turkeylikeDuck.quack()
turkeylikeDuck.fly()

print("-- Duck acts like a turkey:")
let duckLikeTurkey = AdapterAsTurkey(duck: MallardDuck())
duckLikeTurkey.gobble()
duckLikeTurkey.fly()


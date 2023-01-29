class GumballMachine {
    var sold: State
    var hasQuarter: State
    var noQuarter: State
    var soldOut: State
    var winner: State

    var state: State
    var ballCount: Int = 0

    init(ballCount: Int) {
        self.ballCount = ballCount

        sold = Undefined()
        hasQuarter = Undefined()
        noQuarter = Undefined()
        soldOut = Undefined()
        winner = Undefined()
        state = Undefined()
    }
    
    // Because `self` cannot be accessed before initialization ended
    func setDefault() {
        sold = Sold(self)
        hasQuarter = HasQuarter(self)
        noQuarter = NoQuarter(self)
        soldOut = SoldOut(self)
        winner = Winner(self)
        state = soldOut
        if ballCount > 0 {
            state = noQuarter
        }
    }

    func insertQuarter() {
        state.insertQuarter()
    }

    func ejectQuarter() {
        state.ejectQuarter()
    }

    func turnCrank() {
        state.turnCrank()
        state.dispense()
    }

    func releaseBall() {
        print("Gumball is now released.")
        if ballCount > 0 {
            ballCount -= 1
        }
    }

    func refill(amount: Int) {
        ballCount += amount
        print("Ball refilled(amount: \(ballCount))")
        if ballCount > 0 && type(of: state) == type(of: soldOut) {
            state = noQuarter
        }
    }
}

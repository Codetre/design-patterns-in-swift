protocol State {
    func insertQuarter()
    func ejectQuarter()
    func turnCrank()
    func dispense()
}


class Undefined: State {
    func insertQuarter() {
        print("Cannot call in undefined state")
    }

    func ejectQuarter() {
        print("Cannot call in undefined state")
    }

    func turnCrank() {
        print("Cannot call in undefined state")
    }

    func dispense() {
        print("Cannot call in undefined state")
    }
}


class Sold: State {
    let machine: GumballMachine

    init(_ machine: GumballMachine) {
        self.machine = machine
    }

    func insertQuarter() {
        machine.state = machine.hasQuarter
        print("Coin inserted")
    }

    func ejectQuarter() {
        print("Insert coin first")
    }

    func turnCrank() {
        print("You turned crank already")
    }

    func dispense() {
        machine.releaseBall()
        if machine.ballCount > 0 {
            machine.state = machine.noQuarter
        } else {
            print("Sold out. Don't insert a coin")
            machine.state = machine.soldOut
        }
    }
}

class HasQuarter: State {
    let machine: GumballMachine

    init(_ machine: GumballMachine) {
        self.machine = machine
    }

    func insertQuarter() {
        print("Slot can have only one coin")
    }

    func ejectQuarter() {
        machine.state = machine.noQuarter
        print("The coin returned")
    }

    func turnCrank() {
        let lottery = Int.random(in:1...10)

        if machine.ballCount > 1 && lottery == 10 {
            machine.state = machine.winner
        } else {
            machine.state = machine.sold
        }
        print("Crank turned")
    }

    func dispense() {
        print("Turn crank first")
    }
}

class NoQuarter: State {
    let machine: GumballMachine

    init(_ machine: GumballMachine) {
        self.machine = machine
    }

    func insertQuarter() {
        machine.state = machine.hasQuarter
        print("Coin inserted")
    }

    func ejectQuarter() {
        print("Insert a coin first")
    }

    func turnCrank() {
        print("Insert a coin first")
    }

    func dispense() {
        print("Insert a coin first")
    }
}

class SoldOut: State {
    let machine: GumballMachine

    init(_ machine: GumballMachine) {
        self.machine = machine
    }

    func insertQuarter() {
        print("Out of stock")
    }

    func ejectQuarter() {
        print("No coin inserted")
    }

    func turnCrank() {
        print("No coin inserted")
    }

    func dispense() {
        print("Out of stock")
    }
}

class Winner: State {
    let machine: GumballMachine

    init(_ machine: GumballMachine) {
        self.machine = machine
    }

    func insertQuarter() {
        print("Gumball is released now ")
    }

    func ejectQuarter() {
        print("Gumball is released now ")
    }

    func turnCrank() {
        print("Gumball is released now ")
    }

    func dispense() {
        machine.releaseBall()
        
        if machine.ballCount <= 0 {
            machine.state = machine.soldOut
        } else {
            print("You pulled the golden crank!")
            machine.releaseBall()
            if machine.ballCount > 0 {
                machine.state = machine.noQuarter
            } else {
                machine.state = machine.soldOut
            }
        }
    }
}

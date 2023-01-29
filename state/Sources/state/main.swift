let gumballMachine = GumballMachine(ballCount: 2)
gumballMachine.setDefault()
dump(gumballMachine)

print("\n- Scene 1")
gumballMachine.insertQuarter()
gumballMachine.turnCrank()

print("\n- Scene 2")
gumballMachine.insertQuarter()
gumballMachine.ejectQuarter()

print("\n- Scene 3")
gumballMachine.turnCrank()
dump(gumballMachine)

print("\n- Scene 4")
for _ in 1...4 {
    gumballMachine.insertQuarter()
    gumballMachine.turnCrank()
    let rand = Int.random(in: -2...2)
    if rand > 0 {
        gumballMachine.refill(amount: rand)
    }
}


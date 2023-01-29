class SimpleRemoteControl {
    var slot: Command

    init() {
        slot = NullCommand()
    }

    init(_ command: Command) {
        slot = command
    }

    func setCommand(_ command: Command) {
        slot = command
    }

    func buttonWasPressed() {
        slot.execute()
    }
}

class RemoteControl {
    var onCommands: [Command] = Array(repeating: NullCommand(), count: 7)
    var offCommands: [Command] = Array(repeating: NullCommand(), count: 7)
    var undoCommand: Command = NullCommand()

    func setCommand(_ onCommand: Command, _ offCommand: Command, on slot: Int) {
        onCommands[slot] = onCommand
        offCommands[slot] = offCommand
    }

    func onButtonWasPushed(on slot: Int) {
        let command = onCommands[slot]
        command.execute()
        undoCommand = command
    }

    func offButtonWasPushed(on slot: Int) {
        let command = offCommands[slot]
        command.execute()
        undoCommand = command
    }

    func undoButtonWasPushed() {
        undoCommand.undo()
    }

    func description() {
        print("\n----- Remote Control -----")
        for i in 0..<7 {
            print("[\(i)] \(onCommands[i])\t\(offCommands[i])")
        }
    }
}


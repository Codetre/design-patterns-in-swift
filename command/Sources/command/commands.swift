protocol Command {
    func execute() -> Void
    func undo() -> Void
}

class NullCommand: Command {
    func execute() {
        print("Null command")
    }

    func undo() {}
}

class MacroCommand: Command {
    var commands: [Command]

    init(_ commands: [Command]) {
        self.commands = commands
    }

    func setCommands(commands: [Command]) {
        self.commands = commands
    }

    func execute() {
        for cmd in commands {
            cmd.execute()
        }
    }

    func undo() {
        for cmd in commands {
            cmd.undo()
        }
    }
}

class LightOnCommand: Command {
    let light: Light

    init(_ light: Light) {
        self.light = light
    }

    func execute() {
        light.on()
    }

    func undo() {
        light.off()
    }
}

class LightOffCommand: Command {
    let light: Light

    init(_ light: Light) {
        self.light = light
    }

    func execute() {
        light.off()
    }
    
    func undo() {
        light.on()
    }
}

class GarageDoorOpenCommand: Command {
    let garageDoor: GarageDoor

    init(_ garageDoor: GarageDoor) {
        self.garageDoor = garageDoor
    }

    func execute() {
        garageDoor.up()
        garageDoor.stop()
    }

    func undo() {
        garageDoor.down()
        garageDoor.stop()
    }
}

class GarageDoorCloseCommand: Command {
    let garageDoor: GarageDoor

    init(_ garageDoor: GarageDoor) {
        self.garageDoor = garageDoor
    }

    func execute() {
        garageDoor.down()
        garageDoor.stop()
    }
    
    func undo() {
        garageDoor.up()
        garageDoor.stop()
    }
}

class StereoOnWithCdCommand: Command {
    let stereo: Stereo

    init(_ stereo: Stereo) {
        self.stereo = stereo
    }

    func execute() {
        stereo.on()
        stereo.setCD()
        stereo.setVolume(11)
    }

    func undo() {
        stereo.off()
    }
}

class StereoOffCommand: Command {
    let stereo: Stereo

    init(_ stereo: Stereo) {
        self.stereo = stereo
    }

    func execute() {
        stereo.off()
    }

    func undo() {
        stereo.on()
        stereo.setCD()
        stereo.setVolume(11)
    }
}

class FanOffCommand: Command {
    var fan: Fan
    var prevSpeed: Level
    init(_ fan: Fan) {
        self.fan = fan
        prevSpeed = fan.speed
    }

    func execute() {
        prevSpeed = fan.speed
        fan.off()
    }
    
    func undo() {
        switch prevSpeed {
        case .off:
            fan.off()
        case .low:
            fan.low()
        case .medium:
            fan.medium()
        case .high:
            fan.high()
        }
    }
}

class FanLowCommand: Command {
    var fan: Fan
    var prevSpeed: Level

    init(_ fan: Fan) {
        self.fan = fan
        self.prevSpeed = fan.speed
    }

    func execute() {
        prevSpeed = fan.speed
        fan.low()
    }

    func undo() {
        switch prevSpeed {
        case .off:
            fan.off()
        case .low:
            fan.low()
        case .medium:
            fan.medium()
        case .high:
            fan.high()
        }
    }
}

class FanMediumCommand: Command {
    var fan: Fan
    var prevSpeed: Level

    init(_ fan: Fan) {
        self.fan = fan
        self.prevSpeed = fan.speed
    }

    func execute() {
        prevSpeed = fan.speed
        fan.medium()
    }

    func undo() {
        switch prevSpeed {
        case .off:
            fan.off()
        case .low:
            fan.low()
        case .medium:
            fan.medium()
        case .high:
            fan.high()
        }
    }
}

class FanHighCommand: Command {
    var fan: Fan
    var prevSpeed: Level

    init(_ fan: Fan) {
        self.fan = fan
        self.prevSpeed = fan.speed
    }

    func execute() {
        prevSpeed = fan.speed
        fan.high()
    }

    func undo() {
        switch prevSpeed {
        case .off:
            fan.off()
        case .low:
            fan.low()
        case .medium:
            fan.medium()
        case .high:
            fan.high()
        }
    }
}

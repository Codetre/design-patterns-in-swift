// Client code 

let light = Light()
let lightOnCommand = LightOnCommand(light)
let lightOffCommand = LightOffCommand(light)

let garageDoor = GarageDoor()
let garageDoorOpenCommand = GarageDoorOpenCommand(garageDoor)
let garageDoorCloseCommand = GarageDoorCloseCommand(garageDoor)

let stereo = Stereo()
let stereoOnWithCdCommand = StereoOnWithCdCommand(stereo)
let stereoOffCommand = StereoOffCommand(stereo)

let fan = Fan()
let fanOffCommand = FanOffCommand(fan)
let fanLowCommand = FanLowCommand(fan)
let fanMediumCommand = FanMediumCommand(fan)
let fanHighCommand = FanHighCommand(fan)

var onCommands:[Command] = [fanHighCommand, stereoOnWithCdCommand, lightOnCommand]
var offCommands:[Command] = [fanOffCommand, stereoOffCommand, lightOffCommand]
let macroOnCommand = MacroCommand(onCommands)
let macroOffCommand = MacroCommand(offCommands)

// Remote controller only with 1 slot.
let controller = SimpleRemoteControl()
controller.setCommand(lightOnCommand)
controller.buttonWasPressed()

controller.setCommand(garageDoorOpenCommand)
controller.buttonWasPressed()

// Remote controller with 7 slots.
let advancedController = RemoteControl()
advancedController.setCommand(lightOnCommand, lightOffCommand, on: 0)
advancedController.setCommand(garageDoorOpenCommand, garageDoorCloseCommand, on: 1)
advancedController.setCommand(stereoOnWithCdCommand, stereoOffCommand, on: 2)
advancedController.setCommand(fanLowCommand, fanOffCommand, on: 3)
advancedController.setCommand(fanMediumCommand, fanOffCommand, on: 4)
advancedController.setCommand(fanHighCommand, fanOffCommand, on: 5)
advancedController.setCommand(macroOnCommand, macroOffCommand, on: 6)
advancedController.description()

advancedController.onButtonWasPushed(on: 0)
advancedController.offButtonWasPushed(on: 0)

advancedController.onButtonWasPushed(on: 1)
advancedController.offButtonWasPushed(on: 1)
advancedController.undoButtonWasPushed()

advancedController.onButtonWasPushed(on: 2)
advancedController.offButtonWasPushed(on: 2)

advancedController.onButtonWasPushed(on: 3)
advancedController.onButtonWasPushed(on: 4)
advancedController.undoButtonWasPushed()

print("On-macro running")
advancedController.onButtonWasPushed(on: 6)
advancedController.offButtonWasPushed(on: 6)

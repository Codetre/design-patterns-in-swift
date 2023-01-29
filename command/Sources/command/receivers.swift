// No common interface is assumed for receivers.
enum Level: Int {
    case off = 0, low, medium, high
}
    
class Fan {
    var speed: Level = .off

    func high() {
        print("Fan speed high")
        speed = .high
    }

    func medium() {
        print("Fan speed medium")
        speed = .medium
    }

    func low() {
        print("Fan speed low")
        speed = .low
    }

    func off() {
        print("Fan off")
        speed = .off
    }

}

class Light {
    func on() {
        print("Light on")
    }

    func off() {
        print("Light off")
    }
}

class GarageDoor {
    func up() {
        print("Garage door up")
        print("Garage door is open")
    }

    func down() {
        print("Garage door down")
        print("Garage door is close")
    }

    func stop() {
        print("Garage door stop")
    }

    func lightOn() {
        print("Light on garage door on")
    }

    func lightOff() {
        print("Light on garage door off")
    }
}

class Stereo {
    func on() {
        print("Stereo on")
    }

    func off() {
        print("Stereo off")
    }

    func setCD() {
        print("Stereo CD set")
    }

    func setDVD() {
        print("Stereo DVD set")
    }

    func setRadio() {
        print("Stereo radio set")
    }

    func setVolume(_ volume: Int) {
        print("Stereo volume \(volume) set")
    }
}

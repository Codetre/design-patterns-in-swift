class Amplifier {
    var tuner: Tuner?
    var dvdPlayer: DVDPlayer?
    var cdPlayer: CDPlayer?

    func connect(_ tuner: Tuner) {
        self.tuner = tuner
    }

    func connect(_ dvdp: DVDPlayer) {
        self.dvdPlayer = dvdp
    }

    func connect(_ cdp: CDPlayer) {
        self.cdPlayer = cdp
    }

    func on() {
        print("Amp on")
    }

    func off() {
        print("Amp off")
    }

    func set(_ cdp: CDPlayer) {
        print("CD player set")
    }

    func set(_ dvdp: DVDPlayer) {
        print("DVD player set")
    }

    func setStereoSound() {
        print("Stereo sound set")
    }

    func setSurroundSound() {
        print("Surround sound set")
    }

    func set(_ tuner: Tuner) {
        print("Tuner set")
    }

    func set(volume value: Int) {
        print("Volume: \(value)")
    }
}

class Tuner {
    var amplifier: Amplifier?

    func connect(_ amp: Amplifier) {
        self.amplifier = amp
    }

    func on() {
        print("Tuner on")
    }

    func off() {
        print("Tuner off")
    }

    func set(amp: Amplifier) {
        print("Amplifier set")
    }

    func setFm() {
        print("Fm set")
    }

    func setFrequency() {
        print("Frequency set")
    }
}

class DVDPlayer {
    var amplifier: Amplifier?

    func connect(_ amp: Amplifier) {
        self.amplifier = amp
    }

    func on() {
        print("DVD player on")
    }

    func off() {
        print("DVD player off")
    }

    func eject() {
        print("DVD ejected")
    }

    func pause() {
        print("DVD player paused.")
    }

    func play(_ title: String) {
        print("DVD(\(title)) playing")
    }

    func setSurroundAudio() {
        print("Surround audio set")
    }

    func setTwoChannelAudio() {
        print("2-channel audio set")
    }

    func stop() {
        print("DVD player stopped")
    }
}

class CDPlayer {
    var amplifier: Amplifier?

    func connect(_ amp: Amplifier) {
        self.amplifier = amp
    }

    func on() {
        print("CD player on")
    }

    func off() {
        print("CD player off")
    }

    func eject() {
        print("CD ejected")
    }

    func pause() {
        print("CD player paused.")
    }

    func play() {
        print("CD playing")
    }

    func stop() {
        print("CD player stopped")
    }
}

class Projector {
    var dvdPlayer: DVDPlayer?

    func connect(_ dvdp: DVDPlayer) {
        self.dvdPlayer = dvdp
    }

    func on() {
        print("Projector on")
    }

    func off() {
        print("Projector off")
    }

    func tvMode() {
        print("Projector on TV mode")
    }

    func wideScreenMode() {
        print("Projector on wide screen mode")
    }
}

class Screen {
    func up() {
        print("Screen up")
    }

    func down() {
        print("Screen down")
    }
}

class PopcornPopper {
    func on() {
        print("Popcorn popper on")
    }

    func off() {
        print("Popcorn popper off")
    }

    func pop() {
        print("Popcorn popper working")
    }
}

class TheaterLights {
    func on() {
        print("Lights on")
    }

    func off() {
        print("Lights off")
    }
    
    func dim(level: Int) {
        print("Dimming lights to level \(level)")
    }
}

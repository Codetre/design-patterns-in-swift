class HomeTheaterFacade {
    var amplifier: Amplifier
    var tuner: Tuner
    var screen: Screen
    var dvdPlayer: DVDPlayer
    var cdPlayer: CDPlayer
    var lights: TheaterLights
    var popcornPopper: PopcornPopper
    var projector: Projector

    init(amp: Amplifier,
         tuner: Tuner,
         screen: Screen,
         dvdp: DVDPlayer,
         cdp: CDPlayer,
         lights: TheaterLights,
         popcornPopper: PopcornPopper,
         projector: Projector) {
        self.amplifier = amp
        self.tuner = tuner
        self.screen = screen
        self.dvdPlayer = dvdp
        self.cdPlayer = cdp
        self.lights = lights
        self.popcornPopper = popcornPopper
        self.projector = projector
    }

    func watchMovie(title: String) {
        print("Getting ready to watch a movie...")
        popcornPopper.on()
        popcornPopper.pop()
        lights.dim(level: 10)
        screen.down()
        projector.on()
        projector.wideScreenMode()
        amplifier.on()
        amplifier.set(dvdPlayer)
        amplifier.setSurroundSound()
        amplifier.set(volume: 5)
        dvdPlayer.on()
        dvdPlayer.play(title)
    }

    func endMovie() {
        print("Shutting movie theater down...")
        popcornPopper.off()
        lights.on()
        screen.up()
        projector.off()
        amplifier.off()
        dvdPlayer.stop()
        dvdPlayer.eject()
        dvdPlayer.off()
    }

    func listenToCD() {
    }

    func endCD() {
    }

    func listenToRadio() {
    }

    func endRadio() {
    }
}

let tuner = Tuner()
let screen = Screen()
let dvdPlayer = DVDPlayer()
let cdPlayer = CDPlayer()
let lights = TheaterLights()
let popcornPopper = PopcornPopper()
let projector = Projector()
let amplifier = Amplifier()

tuner.connect(amplifier)
dvdPlayer.connect(amplifier)
cdPlayer.connect(amplifier)
projector.connect(dvdPlayer)
amplifier.connect(tuner)
amplifier.connect(dvdPlayer)
amplifier.connect(cdPlayer)

let homeTheater = HomeTheaterFacade(amp: amplifier,
                                   tuner: tuner,
                                   screen: screen,
                                   dvdp: dvdPlayer,
                                   cdp: cdPlayer,
                                   lights: lights,
                                   popcornPopper: popcornPopper,
                                   projector: projector)
homeTheater.watchMovie(title: "Top Gun")
homeTheater.endMovie()

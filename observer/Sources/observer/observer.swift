protocol Observer {
    var id: Int { get set }
    var subject: Subject { get set }
    func update(data: [String: Double]) -> Void
}

protocol Display {
    func display() -> Void
}

class CurrentState: Observer, Display {
    public var id: Int
    var subject: Subject
    private var temperature: Double = -1
    private var humidity: Double = -1
    private var pressure: Double = -1

    init(id: Int, subject: Subject) {
        self.id = id
        self.subject = subject
        self.subject.enroll(observer: self)
    }

    func update(data: [String: Double]) {
        temperature = data["temperature"]!
        humidity = data["humidity"]!
        pressure = data["pressure"]!
    }

    func display() {
        print("-- Current weather --")
        print("temperature: \(temperature)")
        print("humidity: \(humidity)")
        print("pressure: \(pressure)")
    }
}

protocol Subject {
    func enroll(observer: Observer) -> Void
    func except(observer: Observer) -> Void
    func notify() -> Void
}

class WeatherData: Subject {
    var temperature: Double = -1
    var humidity: Double = -1
    var pressure: Double = -1
    var observers: [Observer] = []

    // 클라이언트 코드가 아니라, 옵저버가 구독/해제 요청을 보내야 한다.
    func enroll(observer: Observer) {
        observers.append(observer)
    }

    func except(observer: Observer) {
        for (index, candidate) in observers.enumerated() {
            if candidate.id == observer.id {
                observers.remove(at: index)
            }
        }
    }

    func notify() {
        let record = [
            "temperature": temperature,
            "humidity": humidity,
            "pressure": pressure,
        ]
        for observer in observers {
            observer.update(data: record)
        }
    }

    func fetch(data: [String: Double]) {
        temperature = data["temperature"]!
        humidity = data["humidity"]!
        pressure = data["pressure"]!
    }
}

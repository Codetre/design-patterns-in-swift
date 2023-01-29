var weather = WeatherData()
var currentDisplay = CurrentState(id: 0, subject : weather)

currentDisplay.display()
weather.fetch(data: [
    "temperature": 28.1,
    "humidity": 15.1,
    "pressure": 3.5
    ])
weather.notify()
currentDisplay.display()

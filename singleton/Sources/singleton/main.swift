class Singleton {
    static var uniqInstance: Singleton?

    private init() {
    }

    static func getInstance() -> Singleton? {
        if uniqInstance == nil {
            uniqInstance = Singleton()
        }
        return uniqInstance
    }

    func exist() {
        print("The instance exists.")
    }
}

let singleton = Singleton.getInstance()
singleton!.exist()

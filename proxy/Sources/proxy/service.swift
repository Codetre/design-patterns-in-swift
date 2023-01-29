protocol YoutubeVideoService {
    func showPreview()
    func setName(name: String)
}

class YoutubeVideo: YoutubeVideoService {
    private var id: Int
    private var name: String

    init(id: Int, name: String) {
        self.id = id
        self.name = name
    }

    func showPreview() {
        print("\(name) preview play")
    }

    func setName(name: String) {
        print("Name changed from: \(self.name) -> to: \(name)")
        self.name = name
    }
}

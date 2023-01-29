class YoutubeVideoProxy: YoutubeVideoService {
    private var service: YoutubeVideoService?
    private var id: Int
    private var name: String
    private var client: Client

    init(id: Int, name: String, client: Client) {
        self.id = id
        self.name = name
        self.client = client
    }

    func showPreview() {
        if let youtubeVideo = service {
            youtubeVideo.showPreview()
        } else {
            loadVideo()
            self.service?.showPreview()
        }
    }

    private func loadVideo() {
        if service != nil {
            print("Cache exists and load it")
        } else {
            print("Loading video...")
            service = YoutubeVideo(id: id, name: name)
        }
    }

    func setName(name: String) {
        switch client.auth {
        case .guest: print("Chaning name by guest is prohibited")
        case .owner: 
            loadVideo()
            self.name = name
            service?.setName(name: name)
        }
    }
}

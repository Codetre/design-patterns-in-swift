let owner = Client(auth: .owner)
let proxyByOnwer = YoutubeVideoProxy(id: 1, name: "LOL Game Video", client: owner)

proxyByOnwer.showTitle()
proxyByOnwer.showPreview()
proxyByOnwer.setName(name: "LOL Video")

let guest = Client(auth: .guest)
let proxyByGuest = YoutubeVideoProxy(id: 2, name: "Funny Video", client: guest)

proxyByGuest.showTitle()
proxyByGuest.setName(name: "Changed by guest")

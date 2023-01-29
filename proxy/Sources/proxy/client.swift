enum AccessAuth {
    case owner, guest
}

class Client {
    var auth: AccessAuth

    init(auth: AccessAuth) {
        self.auth = auth
    }
}

class Coffee: CaffeineBeverage {
    func brew() {
        print("Brewing coffee")
    }

    func addCondiment() {
        print("Add sugar and milk")
    }

    func customerWantsCondiment() -> Bool {
        let question = "Do you want to add sugar and milk in the coffee"
        return determine(by: question)
    }
}

class Tea: CaffeineBeverage {
    func brew() {
        print("Steeping teabag")
    }

    func addCondiment() {
        print("Add lemon")
    }

    func customerWantsCondiment() -> Bool {
        let question = "Do you want to add lemon in the tea"
        return determine(by: question)
    }
}

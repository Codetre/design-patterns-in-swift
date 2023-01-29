protocol CaffeineBeverage {
    func prepareRecipe()

    func boilWater()
    func brew()
    func pourInCup()
    func addCondiment()
    func customerWantsCondiment() -> Bool  // Hook
}

extension CaffeineBeverage {
    func prepareRecipe() {
        boilWater()
        brew()
        pourInCup()
        if customerWantsCondiment() {
           addCondiment()
        }
    }

    func boilWater() {
        print("boiling water")
    }


    func pourInCup() {
        print("Pouring in a cup")
    }


    // Auxiliary function for `customerWantsCondiment`.
    func determine(by question: String) -> Bool {
        print(question, terminator: "(Yes/[no]): ")
        let answer = readLine()
        if let addOrNot = answer?.lowercased().starts(with: "y") {
            return addOrNot
        } else {
            return false
        }
    }
}


protocol PizzaIngredientFactory {
    func createDough() -> Dough
    func createSauce() -> Sauce
    func createCheese() -> Cheese
    func createVeggies() -> [Veggie]
    func createPepperoni() -> Pepperoni
    func createClams() -> Clams
}

class NYPizzaIngredientFactory: PizzaIngredientFactory {
    func createDough() -> Dough {
        return ThinCrustDough()
    }

    func createSauce() -> Sauce {
        return MarinaraSauce()
    }

    func createCheese() -> Cheese {
        return ReggianoCheese()
    }

    func createVeggies() -> [Veggie] {
        return [Garlic(), Onion(), Mushroom(), RedPepper()]
    }

    func createPepperoni() -> Pepperoni {
        return SlicedPepperoni()
    }

    func createClams() -> Clams {
        return FreshClams()
    }
}

class ChicagoPizzaIngredientFactory: PizzaIngredientFactory {
    func createDough() -> Dough {
        return ThickCrustDough()
    }

    func createSauce() -> Sauce {
        return PlumTomatoSauce()
    }

    func createCheese() -> Cheese {
        return Mozzarella()
    }

    func createVeggies() -> [Veggie] {
        return [Eggplant(), BlackOlives(), Spinach()]
    }

    func createPepperoni() -> Pepperoni {
        return SlicedPepperoni()
    }

    func createClams() -> Clams {
        return FrozenClams()
    }
}

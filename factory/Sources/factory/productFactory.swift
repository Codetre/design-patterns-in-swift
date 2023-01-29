protocol PizzaStore {
    func orderPizza(type: Type) -> Pizza
    func createPizza(type: Type) -> Pizza 
}

extension PizzaStore {
    func orderPizza(type: Type) -> Pizza {
        let pizza: Pizza = createPizza(type: type)

        pizza.prepare()
        pizza.bake()
        pizza.cut()
        pizza.box()

        return pizza
    }
}

class NYPizzaStore: PizzaStore {
    func createPizza(type: Type) -> Pizza {
        let ingredientFactory: PizzaIngredientFactory = NYPizzaIngredientFactory()

        var pizza: Pizza!
        switch type {
        case .cheese:
            pizza = CheesePizza(factory: ingredientFactory)
        case .clam:
            pizza = ClamPizza(factory: ingredientFactory)
        }
        return pizza
    }
}

class ChicagoPizzaStore: PizzaStore {
    func createPizza(type: Type) -> Pizza {
        let ingredientFactory: PizzaIngredientFactory = ChicagoPizzaIngredientFactory()

        var pizza: Pizza!
        switch type {
        case .cheese:
            pizza = CheesePizza(factory: ingredientFactory)
        case .clam:
            pizza = ClamPizza(factory: ingredientFactory)
        }
        return pizza
    }
}


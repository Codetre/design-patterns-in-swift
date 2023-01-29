enum Type {
    case cheese, clam
}

protocol Pizza {
    var ingredientFactory: PizzaIngredientFactory { get }
    var dough: Dough { get }
    var sauce: Sauce { get }
    var cheese: Cheese { get }
    /*
    var name: String { get }
    var toppings: [Veggie] { get }
    */

    func prepare() -> Void
    func bake() -> Void
    func cut() -> Void 
    func box() -> Void
}

extension Pizza {
    /*
    func prepare() {
        print("Preparing \(name)")
        print("Tossing dough...")
        print("Adding sauce...")
        print("Adding toppings: ", terminator: " ")
        for (index, topping) in toppings.enumerated() {
            var terminator = " "
            if index == toppings.endIndex - 1 {
                terminator = "\n"
            }
            print(topping, terminator: terminator)
        }
    }
    */

    func bake() {
        print("Bake for 25 minutes at 350")
    }

    func cut() {
        print("Cutting the pizza into diagonal slices")
    }

    func box() {
        print("Place pizza in official pizzaStore box")
    }
}

// decorator 패턴을 사용할 순 없을까? 
class CheesePizza: Pizza {
    let ingredientFactory: PizzaIngredientFactory
    var dough: Dough
    var sauce: Sauce
    var cheese: Cheese

    init(factory: PizzaIngredientFactory) {
        ingredientFactory = factory
        dough = ingredientFactory.createDough()
        sauce = ingredientFactory.createSauce()
        cheese = ingredientFactory.createCheese()

    }

    func prepare() {
        print("Tossing \(dough)...")
        print("Adding \(sauce)...")
        print("Adding \(cheese)...")
    }
}

class ClamPizza: Pizza {
    let ingredientFactory: PizzaIngredientFactory
    var dough: Dough
    var sauce: Sauce
    var cheese: Cheese
    var clams: Clams

    init(factory: PizzaIngredientFactory) {
        ingredientFactory = factory
        dough = ingredientFactory.createDough()
        sauce = ingredientFactory.createSauce()
        cheese = ingredientFactory.createCheese()
        clams = ingredientFactory.createClams()
    }

    func prepare() {
        print("Tossing \(dough)...")
        print("Adding \(sauce)...")
        print("Adding \(cheese)...")
        print("Adding \(clams)...")
    }

}

/* Deprecated
class NYStyleCheesePizza: Pizza {
    var name = "NY style sauce and cheese pizza"
    var dough = "Thin curst dough"
    var sauce = "Marinara sauce"
    var toppings = ["Grated reggiano cheese"]
}

class ChicagoStyleCheesePizza: Pizza {
    var name = "Chicago style deep dish cheese pizza"
    var dough = "Extra thick curst dough"
    var sauce = "Plum tomato sauce"
    var toppings = ["Shredded mozzarella cheese"]

    func cut() {
        print("Cutting the pizza into square slices.")
    }
}
*/

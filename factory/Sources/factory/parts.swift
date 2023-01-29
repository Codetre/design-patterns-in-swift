protocol Dough: CustomStringConvertible {}
protocol Sauce: CustomStringConvertible {}
protocol Cheese: CustomStringConvertible {}
protocol Veggie: CustomStringConvertible {}
protocol Pepperoni: CustomStringConvertible {}
protocol Clams: CustomStringConvertible {}

class SlicedPepperoni: Pepperoni {
    var description: String { "Sliced pepperoni" }
}

// Ingredients for NY style pizza
class ThinCrustDough: Dough { 
    var description: String { "Thin crust dough" }
}

class MarinaraSauce: Sauce {
    var description: String { "Marinara sauce" }
}

class ReggianoCheese: Cheese {
    var description: String { "Reggiano cheese" }
}
class Garlic: Veggie {
    var description: String { "Garlic" }
}
class Onion: Veggie {
    var description: String { "Onion" }
}
class Mushroom: Veggie {
    var description: String { "Mushroom" }
}
class RedPepper: Veggie {
    var description: String { "Red pepper" }
}
class FreshClams: Clams {
    var description: String { "Fresh clams" }
}

// Ingredients for Chicago style pizza
class ThickCrustDough: Dough {
    var description: String { "Thick crust dough" }
}
class PlumTomatoSauce: Sauce {
    var description: String { "Plum tomato sauce" }
}
class Mozzarella: Cheese {
    var description: String { "Mozzarella" }
}
class BlackOlives: Veggie {
    var description: String { "Black olives" }
}
class Spinach: Veggie {
    var description: String { "Spinach" }
}
class Eggplant: Veggie {
    var description: String { "Eggplant" }
}
class FrozenClams: Clams {
    var description: String { "Frozen clams" }
}

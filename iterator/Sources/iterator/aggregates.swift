protocol Menu {
    func createIterator() -> Iterator
}

class MenuItem {
    var name: String
    var description: String
    var vegetarian: Bool
    var price: Double

    init(name: String,
         description: String,
         vegetarian: Bool,
         price: Double) {
        self.name = name
        self.description = description
        self.vegetarian = vegetarian
        self.price = price
    }
}

class Menus {
    var menus: [Menu] = []

    init() {
        let breakfastMenu = PancakeHouseMenu()
        addItem(item: breakfastMenu)
        let dinnerMenu = DinerMenu()
        addItem(item: dinnerMenu)
        let cafeMenu = CafeMenu()
        addItem(item: cafeMenu)
    }

    func addItem(item: Menu) {
        menus.append(item)
    }

    func createIterator() -> Iterator {
        return MenuIterator(menus)
    }
}
class PancakeHouseMenu: Menu {
    var menuItems: [MenuItem] = []

    init() {
        addItem(name: "K&B pancake set", 
                description: "Pancake with Scramble egg and toast",
                vegetarian: true,
                price: 2.99)
        addItem(name: "Regular Pancake set", 
                description: "Pancake with fried egg and sausage",
                vegetarian: false,
                price: 2.99)
        addItem(name: "Blueberry pancake", 
                description: "Pancake with fresh blueberry and jam",
                vegetarian: true,
                price: 3.49)
        addItem(name: "Waffle", 
                description: "With blueberry or strawberry on your choice",
                vegetarian: true,
                price: 3.59)
    }

    func addItem(name: String, 
                 description: String, 
                 vegetarian: Bool,
                 price: Double) {
        let menuItem = MenuItem(name: name,
                                description: description,
                                vegetarian: vegetarian, 
                                price: price)
        menuItems.append(menuItem)
    }

    func createIterator() -> Iterator {
        return ArrayIterator(menuItems)
    }
}

class DinerMenu: Menu {
    var menuItems: [String: MenuItem] = [:]

    init() {
        addItem(name: "BLT for vegie",
                description: "Vegie bacon, cabbage, and tomato on wheat bread",
                vegetarian: true,
                price: 2.99)
        addItem(name: "BLT",
                description: "Bacon, cabbage, and tomato on wheat bread",
                vegetarian: false,
                price: 2.99)
        addItem(name: "Today's soup",
                description: "Served with potato salad",
                vegetarian: false,
                price: 3.29)
        addItem(name: "Hotdog",
                description: "Sauerkraut, seasoning, onion, cheese",
                vegetarian: false,
                price: 3.05)
    }

    func addItem(name: String, 
                 description: String, 
                 vegetarian: Bool,
                 price: Double) {
        let menuItem = MenuItem(name: name,
                                description: description,
                                vegetarian: vegetarian, 
                                price: price)
        menuItems[name] = menuItem
    }

    func createIterator() -> Iterator {
        return DictIterator(menuItems)
    }
}

class CafeMenu: Menu {
    var menuItems: [MenuItem] = []
    
    init() {
        addItem(name: "Vegie burger and fries",
                description: "Vegie burger containing Cabbage, tomato, fries",
                vegetarian: true,
                price: 3.99)
        addItem(name: "Today's soup",
                description: "Soup with salad",
                vegetarian: false,
                price: 3.69)
        addItem(name: "Burrito",
                description: "Burrito stuffed with beans, salsa, guacamole",
                vegetarian: true,
                price: 4.29)
    }

    func addItem(name: String, 
                 description: String,
                 vegetarian: Bool,
                 price: Double) {
        let menuItem = MenuItem(name: name,
                                description: description,
                                vegetarian: vegetarian, 
                                price: price)
        menuItems.append(menuItem)
    }

    func createIterator() -> Iterator {
        return ArrayIterator(menuItems)
    }
}

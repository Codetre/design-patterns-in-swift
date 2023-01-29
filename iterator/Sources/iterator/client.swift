class Waitress {
    var breakfastMenu: PancakeHouseMenu
    var dinerMenu: DinerMenu
    var cafeMenu: CafeMenu

    init(breakfast: PancakeHouseMenu, diner: DinerMenu, cafe: CafeMenu) {
        self.breakfastMenu = breakfast
        self.dinerMenu = diner
        self.cafeMenu = cafe
    }

    func printMenu() {
        self.menuIter = menus.createIterator()

        let breakfastIter = breakfastMenu.createIterator()
        let dinerIter = dinerMenu.createIterator()
        let cafeIter = cafeMenu.createIterator()

        print("Menu\n---\nBreakfast")
        printMenu(breakfastIter)
        print("\nDiner")
        printMenu(dinerIter)
        print("\nCafe")
        printMenu(cafeIter)
    }

    func printMenu(_ iter: Iterator) {
        while iter.hasNext() {
            let menuItem = iter.next()
            print(menuItem.name, terminator: ", ")
            print(menuItem.price, terminator: " -- ")
            print(menuItem.description)
        }
    }

    func printBreakfastMenu() {
    }

    func printLunchMenu() {
    }

    func printVegetarianMenu() {
    }

    func isItemVegetarian() {
    }
}

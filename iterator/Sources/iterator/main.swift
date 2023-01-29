var pancakeHouseMenu = PancakeHouseMenu()
var dinerMenu = DinerMenu()
var cafeMenu = CafeMenu()

let waitress = Waitress(breakfast: pancakeHouseMenu,
                        diner: dinerMenu,
                        cafe: cafeMenu)
waitress.printMenu()

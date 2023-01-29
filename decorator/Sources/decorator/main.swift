var baseBeverage = Decaf()
let order = Whip(base: Soy(base: baseBeverage))
print(order.describe())
print(order.cost())


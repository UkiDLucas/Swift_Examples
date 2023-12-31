print ("Welcome, inheritritance.playground")

/**
1. private - Allows the code within a code definition to access the code.
2. fileprivate - Allows the defining source file to access the code.
3. internal - Allows source files from the defining module to access the code.
4. public - DEFAULT. Allows source files from other modules to access the code, however, 
other modules can’t subclass and override classes.
5. open - Allows source files from other modules to access the code. 
Other modules can subclass and override classes.
*/

import Foundation

class Dish {
    private let name: String
    private var ingredients: [String]
    init(name: String, ingredients: [String]) {
        self.name = name
        self.ingredients = ingredients
    }
    func printInfo() {
        print(name)
        print(ingredients)
    }
}

final class AppetizerDish: Dish {
    override func printInfo() {
        print("Appetizer")
        super.printInfo()
    }
}

final class MainDish: Dish {
}

for _ in 0..<5 {
    let randomNumber = Int.random(in: 0...1)
    let dish: Dish
    if randomNumber == 0 {
        dish = AppetizerDish(
            name: "Margherita Flatbread",
            ingredients: [
                "Margherita",
                "Flatbread",
            ]
        )
    } else {
        dish = MainDish(
            name: "Super Spaghetti",
            ingredients: [
                "Spaghetti",
                "Tomato sauce",
            ]
        )
    }
    if let appetizerDish = dish as? AppetizerDish {
        appetizerDish.printInfo()
    }
    if dish is MainDish {
        print("Main Dish!")
    }
}

print ("------------------- TEST -------------------")

class SecretFood {
    //private var secretIngredients: [String] = []
              var secretIngredients: [String] = []
}
class Chef {
    func cookSecretFood(_ secretFood: SecretFood) {
        print(secretFood.secretIngredients)
    }
}
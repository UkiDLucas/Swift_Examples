print("Hello classes.playground/Contents.swift")


class Recipe {
  var ingredients: [String]
  init(ingredients: [String]) {
    self.ingredients = ingredients
  }
}
var marioRecipe = Recipe(
  ingredients: ["Cocoa powder", "Flour"]
)
var adrianRecipe = marioRecipe
adrianRecipe.ingredients = ["Chocolate chip"]

print(marioRecipe.ingredients)

print(" ====== Class: computed property ====== ")


class Rectangle {
    let width: Int
    let height: Int
    var area: Int {
        width * height
    }
    var perimeter: Int {
        width * 2 + height * 2
    }
    init(width: Int, height: Int) {
        self.width = width
        self.height = height
    }
}

let rectangle = Rectangle(width: 12, height: 5)

print(rectangle.perimeter)




 





class LocalFile {
  let name: String
  let fileExtension: String


  init(name: String, fileExtension: String) {
    self.name = name
    self.fileExtension = fileExtension
  }

  var fullPath: String {
    return "path/to/file/" + fullFileName
  }

  var fullFileName: String {
    return name + "." + fileExtension
  }
}

let content = LocalFile(name: "image", fileExtension: "png")
print(content.fullPath)

print(" ====== Class: quiz 1 ====== ")


class Product   {
  var price: Int = 5
}
var product1 = Product()
var product2 = product1                        
product1.price = 20
print("\(product1.price), \(product2.price)")

print(" ====== Class: quiz 2 ====== ")

class Vehicle {
  var type: String
  var noOfWheels: Int
  init(type: String, wheels: Int) {
    self.type = type
    noOfWheels = wheels + 1
  }
}
let car = Vehicle(type: "Jeep", wheels: 3)
print(car.type, "has", car.noOfWheels, "wheels")

print(" ====== Class: quiz 3 ====== ")

class Square {
  var width: Double = 0
  var area: Double {
    return width * width
  }
}

let square = Square()
square.width = 2
print(square.area)
print("Hello structures.playground/Contents.swift")

struct Car {
  var color: String
  var name: String
  var topSpeed: Int
  var mileage: Int

  func description() -> Void {
    print( 
        "I am a \(color) \(name) with a top speed of \(topSpeed)" + 
        " and \(mileage) miles." )
  }

  // Mutating methods
    mutating func paint( newColor: String ) -> Void {
        color = newColor
    }

}

print ( " ====== Memberwise Initialization of the Structure ====== ")
var myCar = Car(
    color: "pink", 
    name: "Car 2", 
    topSpeed: 100, 
    mileage: 4000 )
myCar.description()

var smallCar = Car(
    color: "orange", 
    name: "Car 3", 
    topSpeed: 80, 
    mileage: 3000 )
smallCar.description()



print(" ====== Table Reservations - Mutable Methods ====== ")

struct TableReservation {
  var name: String
  var tableNumber: Int

  mutating func updateBooking(updatedName: String) {
    name = updatedName
  }
}

var myBooking = TableReservation(
                                        name: "Uki", 
                                        tableNumber: 1)
print(myBooking)
myBooking.updateBooking(updatedName: "Maria")
print(myBooking)

print("============= test =============" )


var johnReservation = TableReservation(name: "John", tableNumber: 1)
johnReservation.updateBooking(updatedName: "John")
johnReservation.updateBooking(updatedName: "Maria")
print(johnReservation)

print("============= test =============" )

struct User {
  var iD: Int
  init(iD: Int) {
    self.iD = iD
  }
}

var user1 = User(iD: 1)
var user2 = user1
user1.iD = 2
print("\(user1.iD) \(user2.iD)")


print("============= test 2 =============" )


struct Game {
  var score: Int

  mutating func incScore() {
    score += 1
  }
}

var game1 = Game(score: 1)
var game2 = game1
game1.incScore()
print("\(game1.score) \(game2.score)")

print("============= test 3 =============" )


struct Point {
  var x: Int
  var y: Int



  mutating func setXY(x: Int, y: Int) {
    self.x = x
    self.y = y
  }
}

var point = Point(x: 7, y: 3)
point.setXY(x: 5, y: 1)
print("\(point.x) \(point.y)")

print("=============== quiz 1 ===============" )


struct Employee {
  var salary: Double
  var tax = 0.2
  mutating func deductTax() {
    salary = salary - (tax * salary)
  }
}
var emp = Employee(salary: 100)
emp.deductTax()
print(emp.salary)




print("=============== quiz 2 ===============" )


struct Tax {
  var amount: Int = 5
}
var tax1 = Tax()
var tax2 = tax1
tax1.amount = 20
print("\(tax1.amount), \(tax2.amount)")
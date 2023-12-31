
// Delegation is a process of giving control 
// and passing responsibilities to another instance.

protocol Driver {
    var name: String { get }
    func driveToDestination(_ destination: String, with food: String)
}

class DeliveryDriver: Driver {
    let name: String
    init(name: String) {
        self.name = name
    }
    func driveToDestination(_ destination: String, with food: String) {
        print("\(name) is driving to \(destination) to deliver \(food).")
    }
}

class LittleLemon {
    var deliveryDriver: Driver? // implements the Driver protocol
    func deliverFood(_ food: String, to destination: String) {
        if let deliveryDriver = deliveryDriver {
            deliveryDriver.driveToDestination(
                destination,
                with: food
            )
        } else {
            print("No delivery driver.")
        }
    }
}

let george = DeliveryDriver(name: "George")
let littleLemon = LittleLemon()
littleLemon.deliveryDriver = george
littleLemon.deliverFood(
    "Affogato",
    to: "1 Affogato Lane"
)

print ("------------------- TEST -------------------")


protocol Protocol1 {
  func output()
}

extension Protocol1 {
  func output() {
    print("Output")
  }
}

class Delegate: Protocol1 {
  func output() {
    print("Delegation")
  }
}

class Output {
  var delegate: Protocol1?
  func output() {
    delegate?.output()
  }
}

let output = Output()
output.delegate = Delegate()
output.output()

print("=============================================")


protocol DriverA {
    var name: String { get }
    func driveToDestination(_ destination: String, with food: String)
}

class DeliveryDriverA: DriverA {
    let name: String
    init(name: String) {
        self.name = name
    }
    func driveToDestination(_ destination: String, with food: String) {
        print("\(name) is driving to \(destination) to deliver \(food).")
    }
}

class LittleLemonA {
    var deliveryDriver: DriverA?
    func getDriverName() {
        if let name = deliveryDriver?.name {
            print("Driver name: \(name)")
        } else {
            print("No delivery driver found.")
        }
    }
}

let elisaA = DeliveryDriverA(name: "Elisa")
let littleLemonA = LittleLemonA()
littleLemonA.deliveryDriver = elisaA
littleLemonA.getDriverName()

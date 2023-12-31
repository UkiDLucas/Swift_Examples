import Foundation // used for objc protocols

protocol Dish {
    var name: String { get }
    var preparationMinutes: Int { get set }
    func prepare()
    func plate(artisticLevel: Int)
}

class MainDish: Dish {
    let name: String
    var preparationMinutes: Int
    init(name: String, preparationMinutes: Int) {
        self.name = name
        self.preparationMinutes = preparationMinutes
    }
    func prepare() {
        print("Preparing \(name) for \(preparationMinutes) minutes")
    }
    func plate(artisticLevel: Int) {
        print("Plating artistic level: \(artisticLevel)")
    }
}

let superSpaghetti = MainDish(
    name: "Super Spaghetti",
    preparationMinutes: 35
)
superSpaghetti.prepare()
superSpaghetti.plate(artisticLevel: 10)

print ("------------------- TEST -------------------")


// protocol ProtocolIdentifier {
//     func methodIdentifier(parameter: Int) -> Int
//     var propertyIdentifier: Int { get }
// }

// @objc protocol ProtocolIdentifier1 {
//     @objc optional func methodIdentifier(parameter: Int) -> Int
//     var propertyIdentifier: Int? { get }
//     // protocols.playground/Contents.swift:42:9: 
//     // error: property cannot be a member of an @objc protocol 
//     // because its type cannot be represented in Objective-C
// }

@objc protocol ProtocolIdentifier {
    @objc func methodIdentifier(parameter: Int) -> Int
    var propertyIdentifier: Int { get }
}

// @objc protocol ProtocolIdentifier {
//     func methodIdentifier(parameter: Int) -> Int
//     @objc optional var propertyIdentifier: Int { get }
// }

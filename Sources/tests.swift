
import XCTest
//@testable import LL // LL is the module to import

printUnderline(message: "Hello, tests!" )

final class LLTests: XCTestCase {
    func testExample() {
        XCTAssertEqual(1, 1)
    }

    func test_WhatIsTested_Conditions_Expectations() {
        // given
        let a = 1
        let b = 2
        let expected = 3

        // when
        let actual = a + b + 1

        // then
        XCTAssert(actual == expected, 
            "actual: \(actual) expected: \(expected)")
        printUnderline(message: "End test" )
    }
}

//LLTests.testExample().run()



import Foundation
import XCTest

protocol NetworkManager {
    func getMealsList() -> [String]
}

class FakeNetworkManager: NetworkManager {
    func getMealsList() -> [String] {
        return ["Soda", "Milkshake"]
    }
}  

let menu = MenuManager(networkManager: FakeNetworkManager())
let allMeals = menu.allMeals()
XCTAssertEqual(allMeals, "Soda,Milkshake, X")

class MenuManager {
    
    let networkManager: NetworkManager
    
    init(networkManager: NetworkManager) {
        self.networkManager = networkManager
    }
    
    func allMeals() -> String {
        return networkManager.getMealsList().joined(separator: ",")
    }
}



struct CheckoutItem {
    let name: String
    let price: Int
}


func calculateTotal(items: [CheckoutItem], localTaxPercent: Int) -> Int {
    let itemsTotal = items.reduce(0) { $0 + $1.price }
    let taxAmount = itemsTotal * localTaxPercent / 100
    return itemsTotal + taxAmount
}



import XCTest

@testable import ImplementUnitTesting

final class ImplementUnitTestingTests: XCTestCase {

  func test_calculateTotal_salesTaxTwentyPercent() {
    let items = [
      CheckoutItem(name: "Fish and Chips", price: 625),
      CheckoutItem(name: "Cheeseburger", price: 850),
      CheckoutItem(name: "Milkshake", price: 325),
      CheckoutItem(name: "Black Coffee", price: 175),
    ]
    let taxPercentage = 20

    let totalToPay = calculateTotal(items: items, localTaxPercent: taxPercentage)

    XCTAssertEqual(totalToPay, 2370)
  }
}







// Utility print function
func printUnderline(message text: String, character: Character = "=" ) {
    print( "\n", text )
    for _ in 1...(text.count + 2) { 
        print( character, terminator: "" ) // note no new line terminator
    }
    print( "\n" )
}


/**
In the context of testing, the terms "mock" and "fake" refer to different types 
of test doubles, which are objects or procedures used to mimic or replace 
the behavior of real components in a system during testing. 
Here's how they differ:

1. **Mock**: A mock object is a type of test double that includes methods 
for verifying interactions. In other words, you can check whether 
certain methods were called on the mock object, 
how many times they were called, 
what arguments they were called with, etc. 
Mocks are typically used in behavior-based testing, 
where the focus is on how the system under test interacts with its dependencies.

2. **Fake**: A fake is a simpler type of test double that can be used 
as a stand-in for a real component, 
but which has a simplified or deterministic behavior. 
For example, a fake database might store data in memory instead 
of writing to disk. 
Fakes are typically used when the real component is difficult 
or impractical to use in a test, 
such as a component that requires network access.

In the Swift code you provided, `FakeNetworkManager` is a fake. 
It implements the `NetworkManager` protocol and provides 
a simplified behavior for the `getMealsList` method. 
This allows you to test code that depends on a `NetworkManager` 
without needing to make actual network requests.

To create a mock in Swift, you would typically create 
a class that implements the same interface as the object you're replacing, 
and add additional methods or properties to track interactions. 
There are also several libraries available, such as Cuckoo or SwiftMock, 
that can generate mock objects for you.
**/

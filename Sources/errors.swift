print ("Hello, errors!")

    
enum CalculatorError: Error { // Error protocol
    case divisionByZero
}


class Calculator {
    
    func divide(x: Double, y: Double) throws -> Double {
        
        defer { // this is executed after when the error was thrown
            print("This is a defer clean up statement", y)
        }        
        if y == 0 {
            throw CalculatorError.divisionByZero
        }
        return x / y
    }
}

let calculator = Calculator()

do {
    let successfulResult = try calculator.divide(x: 1, y: 2)
    print(successfulResult)
    let invalidResult = try calculator.divide(x: 1, y: 0)
    print(invalidResult)

}
catch CalculatorError.divisionByZero {
    print("Division by zero detected and not allowed")
}

print("===== quiz =====")
// do {
//     let text = try String(contents Of: URL(string: "google.com")!")
//     print(text)
// } catch {
//     print("No such file.")
// }

// if let result = try! calculator.divide(x: 1, y: 2){
//     print(result)
// }

do {
 print("hello")
}
catch {
 print("Error caught")
}
catch {
 print("Another error caught")
}
//import UIKit // not needed for VS Code

var greeting = "Hello, optionals playground"
print( greeting )

var a: Int?         // nil
var b: Int? = 5     // Optional(5)
let c: Int! = a     // forced unwrapping to nil

print(
    """
    a = \(a as Any),
    b = \(b as Any),
    c = \(c as Any)
    """
)

if let a = a {
    print("1. a is not nil ", a as Any)
} else {
    print("2. a is nil --", a as Any)
}

print( "=====================================" )

var password = "1234"
let passcode = Int(password)
print("1. The passcode of the app is \(passcode!).")
password = "hello world"
if let code = Int(password) {
  print("2. The passcode of the app is \(code).")
} else {
  print("3. Invalid passcode!")
}
let accessCode: Int
if let code = Int(password) {
  accessCode = code
} else {
  accessCode = 1111
}
print("4. The passcode of the app is \(accessCode).")
let firstPassword = "hello"
let secondPassword = "world"
if let firstPasscode = Int(firstPassword),
  let secondPasscode = Int(secondPassword)
{
  print(
    "5. The first passcode of the app is \(firstPasscode) \n and the second passcode of the app is \(secondPasscode)."
  )
} else {
  print("6. Invalid passcodes!")
}
let firstAccessCode: Int
let secondAccessCode: Int
if let firstPasscode = Int(firstPassword),
  let secondPasscode =
    Int(secondPassword)
{
  firstAccessCode = firstPasscode
  secondAccessCode = secondPasscode
} else {
  firstAccessCode = 1111
  secondAccessCode = 2222
}
print(
  "7. The first passcode of the app is \(firstAccessCode) \n and the second passcode of the app is \(secondAccessCode)."
)
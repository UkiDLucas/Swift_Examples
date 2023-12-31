//import UIKit // not needed for VS Code command line

let freeApp = true
if freeApp == true {
  print("You are using the free version of the app. Buy the full version of the app to get access to all of its features.")
}
let morningTemperature = 70
let eveningTemperature = 80
if morningTemperature < eveningTemperature {
  print("It is colder in the morning.")
} else {
  print("It is colder in the evening.")
}
let temperatureDegree = "Fahrenheit"
if temperatureDegree == "Fahrenheit" {
  print("The weather app works with Fahrenheit degrees.")
} else {
  print("The weather app works with Celsius degrees.")
}
if temperatureDegree == "Celsius" || temperatureDegree == "Fahrenheit" {
  print("The weather app is configured properly.")
} else {
  print("The weather app isn't configured properly.")
}
switch temperatureDegree {
    case "Fahrenheit": print("The weather app is configured for the US.")
    case "Celsius": print("The weather app is configured for Europe.")
    default: print("The weather app has an unknown configuration.")
}

print("vvvvvvvvvvvvvv CLASS NOTES vvvvvvvvvvvvvvvvv")


let collectionA: Array<Int> = [8,9,10]
let collectionB: Array<Int> = [10,20,21]
print( type(of: collectionA ) )

// write a function that returns 
// the all elements except common of two arrays (without duplicates)
// [8,9,10] [10,20,21] -> [8,9,20,21]
func allExceptCommon( a: Array<Int>, b : Array<Int> ) -> Array<Int> {
    var results: Array<Int> = []  // empty array  
    results.append( contentsOf: a.filter{ !b.contains($0) })
    results.append( contentsOf: b.filter{ !a.contains($0) })
    return results
}
print ( allExceptCommon( a: collectionA, b: collectionB ) )



//print( collectionA^collectionB ) //error: binary operator '^' cannot be applied to two '[Int]' operands

let language = "English"
switch language {
    case    "English": print("The default language is set to English.")
    case    "Spanish": print("The default language is set to Spanish.")
    default: print("The default language has not been configured yet.")
}
// import UIKit // not needed for VS Code

print("Hello, collections.playground")

print( "\n vvvvvvvvvvvvvvvvvvvvv Dictionary vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv \n" )
var dictionary = ["dog": "🐶", "cat": "🐱", "monkey": "🐵"]

// if let in case the value does not exist
if let oldValue = dictionary.updateValue("🐶🐶", forKey: "dog") {
    print("The old value for dog was \(oldValue).")
}
print(dictionary, type(of: dictionary), dictionary.count)

if let deletedValue = dictionary.removeValue(forKey: "rat") {
    print("The deleted value was \(deletedValue).")
} else {
    print("The value for rat was not found.")
}
print(dictionary, type(of: dictionary), dictionary.count)
dictionary["rat"] = "\u{1F400}" // \U+1F400 is the unicode for 🐀
print(dictionary, type(of: dictionary), dictionary.count)
dictionary["rat"] = nil // remove
print(dictionary, type(of: dictionary), dictionary.count)

print( "\n vvvvvvvvvvvvvvvvvvvvv weekly temp vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv \n" )
// var weeklyTemperatures:[String: [Int]] = [:]
// weeklyTemperatures = [
//     "Monday": [20, 25, 30],
//     "Tuesday": [22, 27, 32],
//     "Wednesday": [21, 26, 31],
//     "Thursday": [23, 28, 33],
//     "Friday": [24, 29, 34],
//     "Saturday": [25, 30, 35],
//     "Sunday": [26, 31, 36]
// ]
// //weeklyTemperatures["Monday"]! += [100, 100, 100] 
// print(weeklyTemperatures, type(of: weeklyTemperatures), weeklyTemperatures.count)
// print("Monday \(weeklyTemperatures["Monday"]!) F")


// var weeklyTemperatures: [String: Int] = [:]
// weeklyTemperatures = [
//   "Monday":     70, 
//   "Tuesday":    75, 
//   "Wednesday":  80, 
//   "Thursday":   85, 
//   "Friday":     90, 
//   "Saturday":   95,
// ]
// weeklyTemperatures["Monday"]! += 20
// print("The temperature on Monday is \(weeklyTemperatures["Monday"]!)°F.")
// if let temperature = weeklyTemperatures["Sunday"] {
//   print("The temperature on Sunday is \(temperature)°F.")
// } else {
//   weeklyTemperatures["Sunday"] = 100
//   print("The temperature on Sunday is \(weeklyTemperatures["Sunday"]!)°F.")
// }
// if weeklyTemperatures.count == 7 {
//   print("You have access to the weather forecast of the whole week.")
//   weeklyTemperatures = [:]
//   print("Reset weekly temperatures for next week!")
// }

print( "\n vvvvvvvvvvvvvvvvvvvvv vehicles Dictionary  vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv \n" )

let vehicles = [
    "unicycle":     1,
    "bicycle":      2,
    "tricycle":     3,
    "quad bike":    4,
    "car":          4,
    "motorbike":    2,
    "plane":        3,
    "helicopter":   0,
    "boat":         0
]
print(vehicles, type(of: vehicles), vehicles.count)

for (vehicle, wheelCount) in vehicles {
    print("A \(vehicle) has \(wheelCount) wheels.")
}

print( "\n vvvvvvvvvvvvvvvvvvvvv Level Scores  vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv \n" )


let levelScores = [10, 20, 30, 40, 50, 60, 70]
for (level, score) in levelScores.enumerated() {
  print("The score of level \(level + 1) is \(score).")
}
var gameScore = 0
for levelScore in levelScores {
  gameScore += levelScore
}
print("The game's score is \(gameScore).")
let weeklyTemperatures = [
  "Monday": 70, "Tuesday": 75, "Wednesday": 80, "Thursday": 85, "Friday": 90, "Saturday": 95,
  "Sunday": 100,
]
for (day, temperature) in weeklyTemperatures {
  print("The temperature on \(day) is \(temperature)°F.")
}
let days = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]
let temperatures = [70, 75, 80, 85, 90, 95, 100]
for index in 0...6 {
  print("The temperature on \(days[index]) is \(temperatures[index])°F.")
}




let emptyDictionary: [String: Int] = [:]
if emptyDictionary.count == 0 {
  print("The dictionary is empty!")
} else {
  print("The dictionary isn’t empty!")
}


let emptyDictionary1: [String: Int] = ["": 0]
if emptyDictionary1.count == 0 {
 print("The dictionary is empty!")
} else {
 print("The dictionary isn’t empty!")
}

print( "\n vvvvvvvvvvvvvvvvvvvvv test question  vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv \n" )

let emptyArray: [Int] = [0]
if emptyArray.count == 0 {
  print("The array is empty!")
} else {
  print("The array isn’t empty!")
}


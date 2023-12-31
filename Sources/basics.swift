//import UIKit

// var greeting = "Hello, playground"
// print( greeting )

// let a : Int8 = 127
// print("Int8.min ", Int8.min)
// print("Int8.max ", Int8.max)
// print("Int16.min ", Int16.min)
// print("Int16.max ", Int16.max)
// print("Int32.min ", Int32.min)
// print("Int32.max ", Int32.max)
// print("Int64.min ", Int64.min)
// print("Int64.max ", Int64.max)
// print("Int.min ", Int.min)
// print("Int.max ", Int.max)
// let day = "Monday"
// let dailyTemperature = 75
// print("Today is \(day). Rise and shine!")
// print("The temperature on \(day) is \(dailyTemperature)°F.")
// var temperature = 70
// print("The temperature in the morning on \(day) is \(temperature)°F.")
// temperature = 80
// print("The temperature in the evening on \(day) is \(temperature)°F.")
// let weeklyTemperature = 75
// temperature = weeklyTemperature
// print("The average temperature this week is \(temperature)°F.")

// var basket = 11 % 2
// print( basket )
// let BIDMAS = [
//     "brackets",
//     "indices",
//     "division",
//     "multiplication",
//     "addition",
//     "substraction" ]
// print( type(of: BIDMAS ) ) // Array<String>


// let levelScore = 10
// var gameScore = 0
// gameScore += levelScore
// print("The game's score is \(gameScore).")
// var levelBonusScore = 10.0
// levelBonusScore = 20
// print("The level's bonus score is \(levelBonusScore).")
// gameScore += Int(levelBonusScore)
// print("The game's final score is \(gameScore).")
// let levelLowestScore = 50
// let levelHighestScore = 99
// let levels = 10
// let levelScoreDifference = levelHighestScore - levelLowestScore
// let levelAverageScore = levelScoreDifference / levels
// print("The level's average score is \(levelAverageScore).")
// let averageLevelScore = Double(levelScoreDifference) / Double(levels)
// print("The correct level's average score is \(averageLevelScore).")


// // let levelScore = 5
// // var gameScore = 10.4
// // gameScore += Double(levelScore)
// // print("The game's score is \(gameScore).")
// print( 20/5 ) // 4  

let quote = "Hello World"
print( quote.hasPrefix("H") )
print( quote.hasSuffix("d") )
print( quote.count ) // 11
print( quote.uppercased() )
print( quote.contains("World") )
//print( quote.firstIndex(of: "r") ) // Optional(Swift.String.Index(_rawBits: 524551))
let multiLineText = 
    """
    Hello
    World
    """
print( multiLineText )



let day = "Monday"
print("Today is \(day).")
let hour = "6"
let minutes = "15"
let period = "PM"
var time = hour + ":" + minutes + " " + period
print("It is \(time).")
print("It is \(time) on \(day).")
let timezone = "PST"
time += " \(timezone)"
print("It is \(time).")
print("It is \(time) on \(day).")
let shortDay = day.prefix(3)
print("Today is \(shortDay).")
print("It is \(time) on \(shortDay).")


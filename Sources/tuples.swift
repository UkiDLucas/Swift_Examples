// import UIKit // not needed for VS Code

var greeting = "Hello, array playground"
print(greeting)
print( "============================= Arrays ==========================================" )

var train = ["wheat","barley","potato","salt","rocks"] // array literal
train.append("coal")
train += ["beets"]
train = train + ["onions"]
train.remove(at: 4)
train[2] = "potatoes"
train.insert("corn", at: 2)
train.append("lettuce")
train.sort() // sort alphabetically (lexically)
train[train.count - 1] = "lettuce"
print( train , type(of: train ), train.count )

print( "================================================================================" )
var levelScores: [Int] = []
if levelScores.count == 0 {
  print("Start playing the game!")
}
let firstLevelScore = 10
levelScores.append(firstLevelScore)
print("The first level's score is \(levelScores[0]).")
let levelBonusScore = 40
levelScores[0] += levelBonusScore
print("The first level's score is \(levelScores[0]).")
let freeLevelScores = [20, 30]
levelScores += freeLevelScores
let freeLevels = 3
if levelScores.count == freeLevels {
  print(
    "You have finished playing the free version of the game. Buy the game to play its full version."
  )
  levelScores = []
  print("Game restarted!")
}

print( "================================================================================" )

var aArray = [1,2,3]
var bArray = [4,5,6]
var cArray = aArray + bArray
print( type(of: cArray ), cArray ,  cArray.count )

print( "================================================================================" )

var mixArray:[Any] = []
mixArray.append(1)
mixArray.append("two")
mixArray.append(3.0)
print( type(of: mixArray ), mixArray ,  mixArray.count )


print( "=================================== tupples =====================================" )

// Array
var vegArray: Any = ["carrot",2,true]
print( type(of: vegArray ), vegArray  ) // no ,  vegArray.count
// tupples
var vegTupple: (String, Int, Bool) = ( "carrot",2,true )
print( type(of: vegTupple ), vegTupple ,  vegTupple.0 )

var (vegType, quantity, inStock) = vegTupple

print( type(of: vegType ), vegType ,  vegType.count )

var veg = (vegetableType: "beet", vegQuantity: 5, inBasket: true)   
print( type(of: veg ), veg ,  veg.vegetableType )

var(vegetableType,vegQuantity,inBasket)   = veg
print(vegQuantity)

var (_, q, _)   = veg
print(q)


print( "vvvvvvvvvvvvvvvvvvvvvvvvvv Tuples exercise vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv" )




let credentials = ("", -1111) // a tuple
if credentials.0 == "" || credentials.1 < 0 {
  print("Invalid credentials!")
} else {
  print("The username is \(credentials.0) and the password is \(credentials.1).")
}
let fullCredentials = (password: "pass", passcode: 1111)
if fullCredentials.password == "" || fullCredentials.passcode < 0 {
  print("Invalid credentials!")
} else {
  print("The password is \(fullCredentials.password) and the passcode is \(fullCredentials.passcode).")
}


print( "vvvvvvvvvvvvvvvvvvvvvvvvvv test vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv\n" )

let emptyArray: [Int] = []
if emptyArray.count == 0 {
  print("The array is empty!")
} else {
  print("The array isn’t empty!")
}


print( "\nvvvvvvvvvvvvvvvvvvvvvvvvvv test vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv\n" )

let emptyArray1: [Int] = [0]
if emptyArray1.count == 0 {
  print("The array is empty!")
} else {
  print("The array isn’t empty!")
}


print( "\nvvvvvvvvvvvvvvvvvvvvvvvvvv test vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv\n" )

let dailyTemperature = ("Monday", 70)
print(dailyTemperature.0)
print(dailyTemperature.1)

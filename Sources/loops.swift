//import UIKit // not needed for VS Code command line

var greeting = "Hello, Loop playground!"
print ( greeting )

print("================= for loop ====================")

for dice in 1...6 {
    print("Roll a \(dice).")
}


var firstDice = Int.random(in: 1...6)
var secondDice = Int.random(in: 1...6)
print("firstDice \(firstDice) and secondDice \(secondDice)")

while firstDice != secondDice {
  firstDice = Int.random(in: 1...6)
  secondDice = Int.random(in: 1...6)
  print("firstDice \(firstDice) and secondDice \(secondDice)")
}
print("You rolled a double \(firstDice).")


let numberPlate = "WW87GP"
for character in numberPlate {
  print("character is = \(character)")
}

print("================= while loop ====================")

var totalTurns = 3
var turnLeft = true

while turnLeft {
    print("turn left")
    totalTurns -= 1
    if totalTurns < 1 {
        turnLeft = false
    }
    print("got another turn")
}


print("============ repeat while loop =================")

firstDice = 0 // already declared above
secondDice = 0
var count = 0
repeat {
    count += 1
    firstDice = Int.random(in: 1...6)
    secondDice = Int.random(in: 1...6)
    print(" \(count). You rolled: \(firstDice) and \(secondDice)")
} while firstDice != secondDice
print("You rolled a double \(firstDice).")


print("============ exercise =================")

let levels = 10
let freeLevels = 4
let bonusLevel = 3
for level in 1...levels {
    if level == 6 {
        print("Level \(level): skip level 6")
        continue
    }
    
    if level == 10 {
        print("Level \(level): stop at level 10")
        break 
    }

    if level == bonusLevel {
        print("Level \(level): Bonus level!")
    } else if level <= freeLevels {
        print("Level \(level): Free to play")
    }

    if level > freeLevels {
        print("Level \(level): Pay $1.99 to unlock")
    }

}   // end for loop

print("============ teacher solution =================")

let t_levels = 10
let t_freeLevels = 4
let t_bonusLevel = 3
for level in 1...t_levels {
  if level == t_bonusLevel {
    print("Skip bonus level \(t_bonusLevel).")
    continue
  }
  print("Play level \(level).")
  if level == t_freeLevels {
    print("""
    You have played all \(t_freeLevels) free levels. 
    Buy the game to play the remaining \(t_levels - t_freeLevels) levels.
    """)
    break
  }
}




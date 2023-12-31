printUnderline(message: "Hello, Map Filter and Reduce!", character: "=" )

// Utility print function
func printUnderline(message text: String, character: Character = "-" ) {
    print( "\n", text )
    for _ in 1...(text.count + 2) { 
        print( character, terminator: "" ) // note no new line terminator
    }
    print( "\n" )
}
/**
This Swift code demonstrates the use of higher-order functions 
`map`, `filter`, and `reduce` on an array of integers. 
*/

/**
When a filter function is called on an array, 
it returns a new array that contains 
only values from the original array that satisfy the condition provided by 
the closure in the filter function call.
*/

let numberArray = [ 1, 2, 3, 4, 5, 6, 7, 8, 9 ]
print( "numberArray: \(numberArray)" ) 

printUnderline(message: "Map closure", character: "=" )
/**
The `map` function is used to transform each element in the array. 
In this case, it's used to convert each number in `numberArray` 
to a string after subtracting 1 from it. 
The result is stored in `numbersAsStrings`. 
The `$0` is a shorthand argument name for the first argument 
passed to the closure.
*/

let numbersAsStrings = numberArray.map{ String($0-1) }
print( "numbersAsStrings -1: \(numbersAsStrings)" )    

printUnderline(message: "Filter closure", character: "=" )
/**
The `filter` function is used to create a new array that includes 
only the elements that satisfy a certain condition. 
The first filter operation creates an array `onlySmallNumbers` 
that includes numbers from `numberArray` that are less than or equal to 5. 
The second filter operation creates an array `verySmall` that includes numbers 
from `numberArray` that are less than 4. 
In the second filter operation, the shorthand argument name `$0` 
is used to represent the element being processed.
*/

let onlySmallNumbers = numberArray.filter{ 
    (aNumber) -> Bool in return aNumber <= 5 
}
print( "onlySmallNumbers: \(onlySmallNumbers)" )    

let verySmall = numberArray.filter{ $0 < 4 }
print( "verySmall: \(verySmall)" ) 


printUnderline(message: "Reduce closure", character: "=" )

/**
The `reduce` function is used to combine all elements in the array 
to create a single output. 
In this case, it's used to calculate the sum of all numbers in `numberArray`. 
The first argument to `reduce` is the initial result value, 
and the second argument is a closure that describes how to combine the elements. 
The closure takes two arguments: 
the current result 
and the current element, 
and returns the new result. 
The sum is calculated in three different ways: 
with explicit argument names (`resultSoFar` and `currentNumber`), 
with shorthand argument names (`a` and `b`), 
and with the most concise form that uses 
shorthand argument names and implicit return (`$0` and `$1`). 
The results are stored in `sumOfNumbers`, `sum`, and `sum2`, respectively.
*/

let sumOfNumbers = numberArray.reduce(0){ (resultSoFar, currentNumber) -> Int 
    in return resultSoFar + currentNumber 
}
print( "sumOfNumbers: \(sumOfNumbers)" )

let sum = numberArray.reduce(0) { (a, b) -> Int in return a + b }
print( "sum: \(sum)" )

let sum2 = numberArray.reduce(0) { $0 + $1 }
print( "sum2: \(sum2)" )


printUnderline(message: "Customer Spending", character: "=" )

struct Order {
    let price: Int
    let location: String
}
  
func totalRevenueOf(orders: [Order],  location: String) -> Int {
    let ordersAtLocation = orders.filter { $0.location == location }
    print("location: ", location, " orders: ", ordersAtLocation)
    let orderPrices = ordersAtLocation.map { $0.price }
    print("location: ", location, " prices: ", orderPrices)
    return orderPrices.reduce(0) { $0 + $1 }
}
  
let orders = [
    Order(price: 24, location: "New York"),
    Order(price: 37, location: "San Francisco"),
    Order(price: 101, location: "New York"),
]
  
let result = totalRevenueOf(orders: orders, location: "New York")
print("sum: ", result)



printUnderline(message: "for in loop", character: "=" )

let donationsInformation  = ["John" : 56, "Tom": 15, "Charlie": 104]
let donationsTexts = donationsInformation.map 
    { "\($0.key) has donated \t $\($0.value)" }
for text in donationsTexts {
    print(text)
}

printUnderline(message: "forEach loop functional programming", character: "=" )

let donationsInformation1 = ["John": 56, "Tom": 15, "Charlie": 104]
donationsInformation1.map 
    { "\($0.key) has donated \t $\($0.value)" }
    .forEach { print($0) }

printUnderline(message: "Quiz: add all number up to", character: "=" )

func sum1(n: Int) -> Int {
    if n == 0 { return 0 }
    print("n: ", n)
    let result = n + sum1(n: n - 1) // decrement n
    print("result: ", result)
    return result
}
print( sum1(n: 6) )

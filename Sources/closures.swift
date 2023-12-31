print("Hello, functional programming!")


printUnderline(message: " Converter closure ", character: "=" )


// higher order function
func convert( values: [Int], converter: (Int) -> Int ) -> [Int] {
    var convertedValues = [Int]()
    for value in values {
        convertedValues.append( converter(value) )
    }
    return convertedValues
}

let originalValues = [ 1, 2, 3, 4, 5, 6, 7, 8, 9 ]  

// Call the convert function with a closure
let convertedValues = convert( 
                        values: originalValues, 
                        converter: { (value: Int) -> Int in return (value * 2) } 
                    )

print( "Double values: \(convertedValues)" )

func triple(_ value: Int ) -> Int { return value * 3 }
print (triple(2))

// Call the convert function with a closure
// let tripleValues = convert( values: originalValues, 
//     converter: {value = triple(value)}
// )
// print( "Triple values: \(tripleValues)"









// Utility print function
func printUnderline(message text: String, character: Character = "-" ) {
    print( "\n", text )
    for _ in 1...(text.count + 2) { 
        print( character, terminator: "" ) // note no new line terminator
    }
    print( "\n" )
}








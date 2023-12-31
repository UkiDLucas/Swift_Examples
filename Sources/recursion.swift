print( "Hello, recursion!" )


func printUnderline(message text: String, character: Character = "-" ) {
    print( "\n", text )
    for _ in 1...(text.count + 2) { 
        print( character, terminator: "" ) // note no new line terminator
    }
    print( "\n" )
}
printUnderline(message: " Count Down ", character: "=" )

func countToZero(from n: Int) {
    if ( n == 0 ) { return } // base case
    print( n )               // perform the work
    countToZero(from: n-1 )  // repeat recursion with smaller problem
}
countToZero(from: 6)

printUnderline(message: " Sum down ", character: "=" )

func sumDown(from n: Int) -> Int {
    if( n == 0 ) { return 0 }   // base case
    return n + sumDown(from: n - 1) // increment and recurse
}
print ("The sum is ", sumDown(from: 64) )

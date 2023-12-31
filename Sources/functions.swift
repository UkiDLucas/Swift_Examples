print ( "Hello, functions.playground/Contents.swift!")
print ( "========================================" )

var goldBars = 0
// notice by keyword is an argument label
// You can NOT set a default value for an in-out parameter
func incrementInventory(_ inventory: inout Int, by amount: Int = 100) {
  inventory += amount
}
incrementInventory(&goldBars)
print(goldBars)
incrementInventory(&goldBars)
print(goldBars)
incrementInventory(&goldBars)
print(goldBars)
incrementInventory(&goldBars, by: 300)
print(goldBars)
incrementInventory(&goldBars, by: 50)
print(goldBars)





print ( "================ Internal Parameters Names ===============" )

func hiThere1(fn: String, sn: String) {
    let fullname = fn + " " + sn
    print("Hi there \(fullname)")
}
hiThere1(fn:  "Uki", sn:  "Lucas")

print ( "================ Hidden Parameters Names ===============" )

func hiThere2(_ fn: String, _ sn: String) {
    let fullname = fn + " " + sn
    print("Hi there \(fullname)")
}
hiThere2( "Uki",  "Lucas")

print ( "================ External Parameters Names ===============" )

func hiThere3( first_name fn: String, last_name sn: String) {
    let fullname = fn + " " + sn
    print("Hi there \(fullname)")
}
hiThere3( first_name: "Uki", last_name:  "Lucas" )

print ( "================ Default Parameters Names ===============" )

func hiThere4(  first_name  fn: String = "Hello", 
                last_name   sn: String = "World") {
    let fullname = fn + " " + sn
    print("Hi there \(fullname)")
}
hiThere4(  ) // empty


print ( "================ Void return ===============" )

func hiThere5(  first_name  fn: String = "Hello", 
                last_name   sn: String = "World") -> Void {
    let fullname = fn + " " + sn
    print("Hi there \(fullname)")
}
hiThere5(  ) // empty

print ( "================ () return ===============" )

func hiThere6(  first_name  fn: String = "Hello", 
                last_name   sn: String = "World") -> () {
    let fullname = fn + " " + sn
    print("Hi there \(fullname)")
}
hiThere6(  ) // empty


print ( "================ Function parameters are mutable by default. ===============" )
func hiThere7(  first_name  fn: String = "Hello", 
                last_name   sn: String = "World") -> () {
    //fn = "Uki"
    let fullname = fn + " " + sn
    print("Hi there \(fullname)")
}
hiThere7(  ) // empty
print("Welcome, sets.playground/Cintents.swift!")

// has to be declred as a variable if you want to insert to it
var colors: Set<String> = [
    "red",
    "red",
    "red",
    "blue",
    "green"
]
colors.insert( "yellow")
colors.remove( "red")
print(colors, colors.count, type(of: colors))


var pastaTypesSet2 = Set<String>()
pastaTypesSet2.insert("Tortellini")
pastaTypesSet2.insert("Ziti")
pastaTypesSet2.insert("Tagliatelle")
pastaTypesSet2.insert("Lasagna")

let union = colors.union(pastaTypesSet2)
print(union, union.count, type(of: union))

print ("====== RESERVATION ======")


let reservationsInPerson: Set = ["000-345-3441", "000-325-3443"]
let reservationsOverPhone: Set = ["000-345-3443", "000-345-5223"]
let reservationsOverInternet: Set = ["000-345-6223", "000-345-7223"]

let inPersonAndOverPhone = 
    reservationsInPerson.union(reservationsOverPhone)
print(inPersonAndOverPhone)

var allPhoneNumbers = 
    inPersonAndOverPhone.union(reservationsOverInternet)

print(allPhoneNumbers)

var confirmationCodes: Set = 
    ["LL3450", "LL3451", "LL3452", "LL3453", "LL3454"]
print("\(allPhoneNumbers.count) \(confirmationCodes.count)")
confirmationCodes.insert("LL3455")
print(confirmationCodes)
confirmationCodes.remove("LL3451")
allPhoneNumbers.remove("000-345-3443")
print("\(allPhoneNumbers.count) \(confirmationCodes.count)")


print ("====== Quiz ======")

let A: Set = [
    "000-345-3223", 
    "000-345-3323"]

let B: Set = [
    "LL3450",
    "LL3451",
    "LL3452", 
    "LL3453", 
    "LL3454"]
print("\(A.count) \(B.count)")


print ("====== Quiz 2 ======")

var letters: Set = ["a","b","c","d"]
print("\(letters.count) \(letters.count)")

let answers: Set<String> = ["True", "True", "False", "True", "False"]
print(answers)

var C: Set<String> = ["red", "blue", "green"]
C.insert("yellow")
print(C)


var cities: Set = ["Cairo", "London", "Paris"]
var cities2: Set<String> = ["Moscow", "Hanoi", "Zurich"]


var numbersA : Set = [100, 102, 103]
var numbersB : Set = [101, 103, 100]
let numbers = numbersA.union(numbersB)
print(numbers)

var E = Set<Int>()
E.insert(1)
E.insert(5)
E.insert(8)
E.insert(3)
E.insert(1)
print(E.count)

print(" Welome to enum.playground/Contents.swift")



print ("============= enum desert types =============")
enum Dessert {
    case cake
    case iceCream
    case cookie
    case tiramisu ( chefName: String? )
}

let dessert = Dessert.tiramisu ( chefName: "Gordon Ramsay" )

switch dessert {
    case .cake:
        print("Your favorite dessert is cake!")

    case .iceCream:
        print("Your favorite dessert is ice cream!")

    case .cookie:
        print("Your favorite dessert is cookie!")

    case .tiramisu (let chefName):
        let prefix: String
        if let chefName = chefName {
            prefix = "\(chefName)'s"
        } else {
            prefix = ""
        }
        print("Your favorite dessert is \(prefix) tiramisu!")
}

print ("============= enum with raw data types =============")

// raw values can NOT repeate
// By extending the type of class like Int, or String, 
// enumeration cases can have custom values of the specified type.
// pasta type is cooking time in minutes for Al Dente
enum PastaTypes: Int {
    case spaghetti    = 8
    case penne        = 10
    case ravioli      = 11
    case rigatoni     = 9
    // case gnocchi      = 10
    // case fusilli      = 10
    // case farfalle     = 10
    // case fettuccine   = 10
    // case linguine     = 10
    // case lasagna      = 10
    // case tagliatelle  = 10
    // case pappardelle  = 10
    // case tortellini   = 10
    // case tortelloni   = 10
    // case orzo         = 10
    // case couscous     = 10
    // case macaroni     = 10
    // case vermicelli   = 10
    // case capellini    = 10
    // case bucatini     = 10
    // case campanelle   = 10
    // case ditalini     = 10
    // case orecchiette  = 10
    // case rotini       = 10
    // case ziti         = 10
    // case cavatappi    = 10
    // case cavatelli    = 10
    // case gemelli      = 10
    // case mafalda      = 9
    // case paccheri     = 10
    // case pici         = 10
    // case radiatori    = 10
    // case strozzapreti = 10
    // case trofie       = 10
    // case zitiCorti    = 10
    // case zitiLunghi   = 10
    // case rotelle      = 10
    // case rotiniLisci  = 10
    // case rotiniRicci  = 10
}

let cookingTime = PastaTypes.penne.rawValue
print("Penne will be perfectly cooked in \(cookingTime) minutes.")


func cookingPerfectPasta(pasta: PastaTypes) {
  let cookingTime = pasta.rawValue
  print("The \(pasta) pasta will be perfectly cooked in \(cookingTime) minutes.")
}
cookingPerfectPasta(pasta: .rigatoni)

print ("\n ============= enum CaseIterable protocol ============= \n")

enum Pastas: Int, CaseIterable {
  case spaghetti
  case penne
  case ravioli
  case rigatoni
}

let totalCaseCount = Pastas.allCases.count
print("count", totalCaseCount)


print ("\n =========== enum cooking time ASSOCIATED values ========= \n")

enum PastaTypesA {
  case spaghetti(cookingTime: Int)
  case penne(cookingTime: Int)
  case ravioli(cookingTime: Int)
  case rigatoni(cookingTime: Int)
}

let spaghetti = PastaTypesA.spaghetti(cookingTime: 10)  
let penne = PastaTypesA.penne(cookingTime: 11)

print("cookingTime", cookingTime)

if cookingTime < 8 {
  print("1. Spaghetti is still not fully cooked...")
} else {
  print("1. Spaghetti is cooked, take it out of the water!")
}

print( "\n ===== switch case inside a function ========= \n")

func checkIfCooked(for pasta: PastaTypesA) {
    switch pasta {
        case .spaghetti(let cookingTime):
            if cookingTime < 8 {
                print("2. Spaghetti is still not fully cooked...")
            } else {
                print("2. Spaghetti is cooked, take it out of the water!")
            }
            default: return
    }
}
checkIfCooked(for: .spaghetti(cookingTime: 9))


print( "\n ===== switch case WHERE inside a function ========= \n")

func checkIfCooked2(for pasta: PastaTypesA) {
    switch pasta {
        case .spaghetti(let cookingTime) where cookingTime >= 8:
            print("Spaghetti is cooked, take it out of the water!")
        default: print("Pasta is not cooked.")
    }
}
checkIfCooked2(for: .spaghetti(cookingTime: 7))
checkIfCooked2(for: .spaghetti(cookingTime: 12))


print( "\n ===== Ingredients ========= \n")

enum Ingredient: String {
  case lettuce  = "Romaine Lettuce"
  case croutons = "Salted Croutons"
  case chicken  = "Free Range Chicken"
}

let ingredient = Ingredient.lettuce

switch ingredient {
    case .lettuce:
        print("We use \(ingredient.rawValue) that has the richest flavor from all the lettuces")
    case .croutons:
        print("Our \(ingredient.rawValue) makes sure we do not have to use additional salt in our salads")
    case .chicken: print("Our meals tastes better with \(ingredient.rawValue) to raise the quality")
}

enum RecipeInformation {
  case allergens(information: String)
}

let recipeInformation = 
    RecipeInformation.allergens(information: "Peanuts, Milk, Gluten")

switch recipeInformation {
case .allergens(let information): 
    print("The meal includes the following allergens: \(information)")
}


print ("\n =========== quiz 1 ========= \n")


enum IngredientA: String {
    case lettuce = "Romain Lettuce"
    case croutons = "Salted Croutons"
    case chicken = "Free Range Chicken"
}

print("This is the ingredient enumeration value: \(IngredientA.lettuce)")
print("This is the ingredient enumeration raw value: \(IngredientA.lettuce.rawValue)")



print("/n =========== quiz 2 ========= /n")

enum Table {
  case Indoors
  case Outdoors
  var description: String {
    switch self {
        case .Indoors:
            return "Use circular tables"
        case .Outdoors:
            return "Use rectangular tables"
    }
  }
}

let table = Table.Indoors
print(table.description)

print("/n =========== both ASSOCIATED and raw values ========= /n")

enum Coins: Int {
  case cent = 1 
  case dime  = 10
  case quarter = 25
}



enum Week: Int, CaseIterable {
  case Monday = 1
  case Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday
}

for day in Week.allCases {
  print("\(day) is day \(day.rawValue) of the week")
}
// Monday is day 1 of the week
// Tuesday is day 2 of the week
// Wednesday is day 3 of the week
// Thursday is day 4 of the week
// Friday is day 5 of the week
// Saturday is day 6 of the week
// Sunday is day 7 of the week


enum PastaTypes3: Int {
    case spaghetti
    case penne
    case ravioli
    case rigatoni
}


print("raw value: ", PastaTypes3.rigatoni.rawValue )
print("raw value: ", PastaTypes3.spaghetti.rawValue )
print("raw value: ", PastaTypes3.penne.rawValue )
print("raw value: ", PastaTypes3.ravioli.rawValue )
print("raw value: ", PastaTypes3.rigatoni.rawValue )

print( type(of: PastaTypes3.penne.rawValue) )


enum D {
    case spaghetti
    case penne
    case ravioli
    case rigatoni
}
print( type(of: D.penne) )
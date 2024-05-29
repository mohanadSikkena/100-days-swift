import Cocoa
// day 14
let opposites = [
    "Mario": "Wario",
    "Luigi": "Waluigi"
]

if let peachOpposite = opposites["Peach"] {
    print("peach opposite is \(peachOpposite)")
}

if let marioOpposite = opposites["Mario"] {
    print("mario opposite is \(marioOpposite)")
}

var userName:String? = nil

if let nameUnWrapped = userName{
    print ("succes")
}else{
    print("failed")
}

let number : Int? = 5

if let number = number{
    print ("success")
    print(number)
}



func test()->Int{
    var myVar :Int? = 20
    
    if let myVar = myVar{
        print("if let su")
    }else{
        print ("if let fail")
    }
    print(myVar)
    
    guard let myVar = myVar else {
        return 5
    }
    print(myVar)
    return 10
    
}
print(test())

let captains = [
    "Enterprise": "Picard",
    "Voyager": "Janeway",
    "Defiant": "Sisko"
]
let newCaptain = captains["Rmadrid"] ?? "L.Modric"
print(newCaptain)

let captainsList = [String]()
print(captainsList.randomElement() ?? "L.Modric")

let input = "as"

let intNumber = Int(input) ?? 0
print(intNumber)

let names = ["Arya", "Bran", "Robb", "Sansa"]
let chosen = names.randomElement()?.uppercased() ?? "No One"

print(chosen)

enum UserErrors : Error {
    case badId , networkFailed
}

func getUser(id:Int) throws ->String {
 
    throw UserErrors.networkFailed
}
if let user = try? getUser(id: 25) {
    print ("user \(user)")
}

let user = (try? getUser(id: 12)) ?? "nil"
print(user)

//Checkpoint 9

func randomOptional (arr:[Int]?)->Int{
    arr?.randomElement() ?? Int.random(in: 1...100)
}

let y :[Int]? = nil
print(randomOptional(arr: y))

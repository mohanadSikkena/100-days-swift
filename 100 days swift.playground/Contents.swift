import Cocoa
//day 5
let score = 85

if score > 80 {
    print(true)
}

let age = 25

if age > 18 {
    print("Youre eligible to vote")
}

let ourName="abcdefz"
let friendName="abcdefg"

if ourName > friendName {
    print ("\(ourName) before \(friendName)")
}

if ourName < friendName {
    print("\(friendName) befores \(ourName)")
}

var numbers = [1,2,3]
numbers.append(4)

if numbers.count > 3 {
    numbers.removeFirst()
}
var userName = "King"
if userName == "" {
    userName="Anonymous"
}

if userName.count == 0 {
    userName = "Anonymous"
}
if userName.isEmpty {
    userName = "Anonymous"
}
print ("hello \(userName)")

let userAge=18

if userAge <= 18 {
    print("you can vote")
}else {
    print ("you cant vote")
}

if userAge <= 18 {
    print ("you can vote")
}else if userAge == 17 {
    print ("you need 1 year to vote")
}else {
    print ("you cant vote")
}
let temp = 25
if temp > 20 && temp < 30 {
    print("its a nice day")
}
let hasParentAgreement = false

if hasParentAgreement || userAge >= 18 {
    print ("You can Buy this game")
}
enum TransportOption {
    case airplane, helicopter, bicycle, car, scooter
}
let transport :TransportOption = .airplane

if transport == .airplane || transport == .helicopter{
    print ("lets fly")
}else if transport == .bicycle {
    print ("i hope theres a bike path")
}else if transport == .car {
    print("Time to get stuck in traffic.")
}else {
    print ("I will hire a scooter now")
}

enum Weather{
    case sun , rain , snow ,wind , unknown
}

let forecast = Weather.snow

switch forecast {
case .sun :
    print ("sunny")
case .snow :
    print("Snow")
case  .rain :
    print ("rain")
case .wind :
    print ("wind")
case .unknown :
    print ("Unknown")
}


let city = "cairo"
switch city{
case "alex" :
    print("alex")
case "cair" :
    print("cair")
default :
    print (city)
}

let day = 4

switch day {
case 4 :
    print (4)
case 5 :
    print(5)
default :
    print("default")
}

switch day {
case 5 :
    print("5 then ")
    fallthrough
case 4 :
    print ("4 then ")
    fallthrough
case 3 :
    print ("3")
default :
     print("default")
}

let canVote = age > 18 ? "Yes" : "No"


let hour = 15

print (hour > 12 ? "Its After Noon " : "Its before Noon" )

enum Theme {
    case light , dark , system
}
let theme = Theme.dark
let background = theme == .dark ? "dark" : "Light or system"
print(background)


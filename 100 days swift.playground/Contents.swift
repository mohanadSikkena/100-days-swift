import Cocoa



let fileName="profile.jpg"
print(fileName.hasSuffix(".jpg"))

let number=120
print(number.isMultiple(of: 3))

let isGoodDog=true
var isGameOver=false
let isMultiple=number.isMultiple(of: 2)
isGameOver = !isGameOver
isGameOver.toggle()
isGameOver.toggle()

// Join Strings Together

let firstWord="First Word"
let secondWord=" And Second Word Is Combined"
let combined=firstWord + secondWord
let quote = "Then he tapped a sign saying \"Believe\" and walked away."

let longQuote = """
Then he tapped a sign saying \"Believe\" and walked away.
"""
let name = "ahmed"
let age = 16
let nameAndAge="his name is \(name) and his age is \(age)"
"5+5 = \(5+5)"


// check Point 1

let celsius=20
let fahrenhiet=(celsius * 9 / 5) + 32
print ("The current tempreture is \(celsius) celsuis and \(fahrenhiet) fahrenhiet°")

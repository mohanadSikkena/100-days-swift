import Cocoa



var name:String="Ahmed Ali"
print(name.hasPrefix("Ahmed"))

"""
name variable has suffix Ali
    \(name.hasSuffix("Ali"))
"""
var bigNumber=100_000
bigNumber.isMultiple(of: 5)
bigNumber%4==0

let doubleNumber=11.5
let intNumber=10
let intResult=intNumber-Int(doubleNumber)
let doubleResult = Double(intNumber)-doubleNumber

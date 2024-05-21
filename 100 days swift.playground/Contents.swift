import Cocoa
//day 4 type annotations
let surName : String = "Ali"
var score : Int = 0
let scores : Double=0
let isAuthenticated : Bool = false
let albums :[String]=["album1","Album2"]
var user : [String:String] = ["name":"ahmed","age":"25","surName":"ali"]
let books : Set<String> = ["ahmed in the river","ali in the river","ahmed in the river"]
var cities : [String] = []
var clues = [String]()

enum UIStyle{
    case light,dark,system
}
var style = UIStyle.dark
style = .system
let username:String

username="example"

// checkpoint 2

let array = ["ahmed","mohammed","ali","ali","mohammed"]
print(array.count)
let array2 : Set<String> = Set(array)

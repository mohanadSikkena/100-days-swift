import Cocoa
// day 13

protocol Vechile {
    func travel(distance:Int)
    func estimateTime(for distance:Int)->Int
}
struct Car : Vechile {
    func estimateTime(for distance: Int) -> Int {
        distance/50
    }
    func travel(distance: Int) {
        print("I'm travelling \(distance) KM")
    }
}

func commute(distance:Int,using vechile:Vechile){
    if car.estimateTime(for: distance) > 20 {
        print("thats too slow I`m trying another car")
    }else{
        car.travel(distance: distance)
    }
}
let car:Car = Car()
commute(distance:1500 , using: car)

struct Bicycle: Vechile {
    func estimateTime(for distance: Int) -> Int {
        distance / 10
    }

    func travel(distance: Int) {
        print("I'm cycling \(distance)km.")
    }
}

let bike = Bicycle()
commute(distance: 50, using: bike)

var quote = "   The truth is rarely pure and never simple   "
let trimmed = quote.trimmingCharacters(in: .whitespacesAndNewlines)
print(trimmed)

extension String{
    func trimmed()->String{
        self.trimmingCharacters(in: .whitespacesAndNewlines)
    }
    mutating func trim() {
        self = self.trimmed()
    }
}
let newQuote = quote.trimmed()
print(newQuote)
quote.trim()
print(quote)

struct Book {
    let title: String
    let pageCount: Int
    let readingHours: Int
}
extension Book {
    init(title: String, pageCount: Int) {
        self.title = title
        self.pageCount = pageCount
        self.readingHours = pageCount / 50
    }
}
let guests = ["Mario", "Luigi", "Peach"]

print (guests.isEmpty == false)

extension Collection {
    var isNotEmpty : Bool {
        self.isEmpty == false
    }
}
print (guests.isNotEmpty)

protocol Person {
    var name: String { get }
    func sayHello()
}

extension Person {
    func sayHello (){
        print("Hello I`m \(name)")
    }
}

// check point 8

protocol Property {
    var rooms:Int {get set}
    var cost:Int {get set}
    var realestateName :String {get set}
    func summary()
}
extension Property {
    func summary(){
        print ("The Summary of the is")
    }
}
struct House : Property{
    var cost: Int
    var realestateName: String
    var rooms: Int
    
}
struct Office : Property{
    var cost: Int
    var realestateName: String
    var rooms: Int
}


import Cocoa
// day 12

class Game{
    var score = 0 {
        didSet{
            print ("score Was \(oldValue)")
            print ("new score Is \(score)")
        }
    }
}
let game:Game = Game()
game.score = 5

class Employee {
    let hours:Int
    
    init(hours: Int) {
        self.hours = hours
    }
    func printSummary() {
        print("I work \(hours) hours a day.")
    }
    func work(){
        print("I'm writing code for \(hours) hours.")
    }
}
class Developer : Employee {
    
    override func work(){
        print("I'm A developer writing code for \(hours) hours.")
    }
}
class Manager : Employee {
    override func work() {
            print("I'm A manager going to meetings for \(hours) hours.")
        }
}
let ahmed = Developer(hours: 10)
let mohammed = Manager(hours: 5)
ahmed.work()
mohammed.work()
ahmed.printSummary()
mohammed.printSummary()

class Vechile{
    let isElectric :Bool
    init(isElectric: Bool) {
        self.isElectric = isElectric
    }
}

class Car : Vechile {
    let isComfort :Bool
    init(isComfort: Bool ,isElectric:Bool) {
        self.isComfort = isComfort
        super.init(isElectric: isElectric)
    }
}

let car :Car = Car(isComfort: true, isElectric:true)

class User {
    var username = "Anonymous"
    init(username: String = "Anonymous") {
        self.username = username
        print("\(username) created")
    }
    deinit{
        print("\(username) : Im Dead")
    }
}
let user1 : User = User()

//user1.username = "ahmed"

for i in 1...3{
    let newUser = User()
}
var users = [User]()

for i in 1 ... 5 {
    let user = User()
    users.append(user)
}
users.removeAll()


//Checkpoint 7



class Animal {
    let legs :Int
    init(legs: Int) {
        self.legs = legs
    }
    func speak(){
        print("Animal Is Speaking Now")
    }
}

class Dog : Animal{
    override func speak() {
        print("Dog Is Speaking Now")
    }
}
class Corgi : Dog {
    override func speak() {
        print ("Corgi Is Speaking Now")
    }
}
class Poodle : Dog {
    override func speak() {
        print ("Poodle Is Speaking Now")
    }
}

class Cat : Animal {
    let isTame : Bool
    init(isTame: Bool ) {
        self.isTame = isTame
        super.init(legs: 4)
    }
    override func speak() {
        print ("Cat Is Speaking Now")
    }
}
class Persian : Cat {
    override func speak() {
        print("Persian Is Speaking Now")
    }
}
class Lion : Cat {
    override func speak() {
        print("Lion Is Speaking Now")
    }
}

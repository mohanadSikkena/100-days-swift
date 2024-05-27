import Cocoa
// day 10
struct Album{
    let title:String
    let artist:String
    let year:Int
    func printSummary(){
        print("\(title) in \(year) by \(artist)")
    }
}
let album:Album=Album(title: "title", artist: "artist", year: 2001)
album.printSummary()

struct Employee{
    let name:String
    var vacationAlocated:Int
    var vacationTaken=0
    var vacationRemaining:Int{
        get {
            vacationAlocated - vacationTaken
        }
        set{
            vacationAlocated = vacationTaken + newValue
        }
    }
    mutating func takeVacation(days:Int){
        if vacationRemaining >= days {
            vacationTaken += days
            print("Happy vacation")
            print(vacationRemaining)

        }else{
            print("Oops no remaining vacation days")
        }
    }
    
}

var employee:Employee = Employee(name: "ahmed", vacationAlocated: 22)
print (employee.vacationRemaining)
employee.vacationTaken=10
print(employee.vacationRemaining)
employee.vacationRemaining=15
print(employee.vacationRemaining)
print(employee.vacationAlocated)

struct Game{
    var score = 0 {
        didSet {
            print ("Score now is \(score)")
        }
        willSet {
            print ("Score was \(score)")
            print("score will be \(newValue)")
        }
    }
    
}

var game:Game = Game()
game.score += 10
game.score += 10

struct Player {
    let name:String
    let number:Int
    
    init(name: String) {
        self.name = name
        number = Int.random(in: 1...99)
    }
    
}
let player:Player = Player(name: "CR 7")
print(player.number)

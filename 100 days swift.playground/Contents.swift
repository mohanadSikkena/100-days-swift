import Cocoa
// day 11
struct BankAccount{
    private(set) var funds = 0
    
    
    mutating func deposit(amount:Int){
        funds += amount
    }
    mutating func withdraw(amount:Int)->Bool{
        if funds >= amount {
            funds -= amount
            return true
        }else{
            return false
        }
    }
    
}
var account = BankAccount()
account.deposit(amount: 500)
let success=account.withdraw(amount: 250)

if success {
    print("Withdrew money successfully")
} else {
    print("Failed to get the money")
}
print(account.funds)


struct School{
    static var studentsCount=0
    
    static func addStudent(student:String){
        print("\(student) has joined The School")
        studentsCount+=1
    }
}

print(School.studentsCount)
School.addStudent(student: "Ahmed")
print(School.studentsCount)

//checkPoint 6

struct Car{
//    model, number of seats, and current gear,
//    then add a method to change gears up or down.
    let model:String
    let numberOfSeats:Int
    private(set) var currentGear = 1
    mutating func gearUp(){
        if currentGear < 10 {
            currentGear+=1
            print("current Gear Is : \(currentGear)")
        }else{
            print("Youre at the Maximum Speed")
        }
    }
    mutating func gearDown(){
        if currentGear > 1 {
            currentGear -= 1
        }else {
            print("You cant go down than this")
        }
    }
}

var car:Car=Car(model: "2001", numberOfSeats: 3)

car.gearUp()
car.gearUp()
car . gearDown()
car.gearUp()

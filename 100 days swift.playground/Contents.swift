import Cocoa
// day 8

func printTimesTables(for number: Int, end: Int = 12) {
    for i in 1...end {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(for: 5, end: 10)
printTimesTables(for: 5)

enum Errors:Error {
    case short , obvoius , noRoot , OutOfBounds
}

func checkPassword(_ password:String) throws ->String {
    if(password.count < 8){
        throw Errors.short
    }else if(password=="12345678"){
        throw Errors.obvoius
    }
    if password.count < 10 {
            return "OK"
        } else if password.count < 12 {
            return "Good"
        } else {
            return "Excellent"
        }
}
do {
    let result = try checkPassword("12345678")
    print(result)
}catch Errors.short{
    print("Error password iS short ")
}catch Errors.obvoius{
    print ("Error password is Obvious")
}

// checkpoint 4
// a function that accepts an integer from 1 through 10,000, and returns the integer square root of that number. That sounds easy, but there are some catches:
//If the number is less than 1 or greater than 10,000 you should throw an “out of bounds” error.
//If you can’t find the square root, throw a “no root” error.


func getSqrt(_ number:Int) throws ->Int{
    var solution :Int = 0
    if (number > 10_000 || number < 1){
        throw Errors.OutOfBounds
    }
    if (number == 1){
        solution = 1
        return solution
    }
    for i in 1...100 {
        if (i * i == number) {
            solution = i
            break
        }
    }
    if(solution==0){
        throw Errors.noRoot
    }
    return solution
    
}
do{
    let solution = try getSqrt(10000)
    print(solution)
}catch Errors.noRoot{
    print("no root")
}catch Errors.OutOfBounds{
    print ("Out of bounds")
}

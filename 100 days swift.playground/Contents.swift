import Cocoa
// day 7



func showWelcome(){
    print("Welcome to my app!")
    print("By default This prints out a conversion")
    print("chart from centimeters to inches, but you")
    print("can also set a custom range if you want.")
}
showWelcome()

func printTimesTable(number:Int){
    for i in 1...12{
        print("\(number) * \(i) = \(number*i)")
    }
}
printTimesTable(number: 5)
printTimesTable(number: 6)

func printTimesTable2(number:Int , end:Int){
    for i in 1...end{
        print("\(number) * \(i) = \(number*i)")
    }
}
printTimesTable2(number: 5,end: 7)

func rollDice()->Int{
    return Int.random(in: 1...6)
}
print(rollDice())

func areLettersIdentical(word1:String,word2:String)->Bool{
    return word1.sorted() == word2.sorted()
}
print(areLettersIdentical(word1: "asd", word2: "sda"))

func rollDice2()->Int{
    Int.random(in: 1...6)
}

func pythagoras(a:Double,b:Double)->Double{
    sqrt(a*a + b*b)
}
print(pythagoras(a: 3, b: 4))


func getUser()->[String]{
    return ["ahmed" , "mohammed"]
}

func getUser2()->[String:String]{
    return ["name":"ahmed","secondName":"mohammed" ]
}

func getUser3()->(firstName:String , secondName:String){
    (firstName:"ahmed",secondName:"Mohammed")
}
print(getUser3().firstName)
func getUser4()->(String ,String){
    ("ahmed","Mohammed")
}
print(getUser4().0)
let (firstName,secondName)=getUser3()
print(firstName)

func rollDiceUpdated(sides:Int,count:Int)->[Int]{
    var rolls=[Int]()
    for _ in 1...count{
        rolls.append(Int.random(in: 1...sides))
    }
    return rolls
}
print (rollDiceUpdated(sides: 6, count: 10))

func rollDice(sides:Int,count:Int)->Int{
    return Int.random(in: 1...6)
}
print(rollDice(sides: 6, count: 10))

func isUpperCased(string:String)->Bool{
    string==string.uppercased()
}
print(isUpperCased(string: "ahmed"))
func isUpperCased(_ string:String)->Bool{
    string==string.uppercased()
}
print(isUpperCased("AHMED"))


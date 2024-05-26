import Cocoa
// day 9
func greetUser(){
    print("Hello User")
}
greetUser()
var greet = greetUser
greet()
var greetFunction = {
    print("Hello User")
}
greetFunction()

let sayHello = {(user:String)->String in
"Hi \(user)"
}
print(sayHello("ahmed"))

let greetCopy :()->Void = greetUser
greetCopy()

func greetUserCopy(user:String)->String{
    return "Hello \(user)"
}
let sayHelloCopy :(String)->String = greetUserCopy
print(sayHelloCopy("ahmed"))

let team = ["Gloria", "Suzanne", "Piper", "Tiffany", "Tasha"]
let sortedTeam = team.sorted()
print(sortedTeam)

func sortFunction(name1:String , name2:String)->Bool{
    if (name1=="Piper"){
        return true
    }else if(name2=="Piper"){
        return false
    }
    return name1>name2
}

let sortedCopy = team.sorted(by:sortFunction)
print(sortedCopy)
let captainFirstTeam = team.sorted(by:{(name1:String,name2:String ) -> Bool in
    if (name1=="Piper"){
        return true
    }else if(name2=="Piper"){
        return false
    }
    return name1>name2
})
print(captainFirstTeam)

var captainFirst=team.sorted{ name1,name2 in
    if (name1=="Piper"){
        return true
    }else if(name2=="Piper"){
        return false
    }
    return name1>name2
}
print(captainFirst)

captainFirst = team.sorted{
    if ($0=="Suzanne"){
        return true
    }else if($1=="Suzanne"){
        return false
    }
    return $0>$1
}
print(captainFirst)
captainFirst=team.sorted{$0 > $1}
print(team.sorted())
print(captainFirst)

let tOnly=team.filter{$0.hasPrefix("T")}
print(tOnly)
let teamMapped=team.map{
    $0 + " Ahmed"
}
print(teamMapped)

func makeArray(size:Int,generator:()->Int)->[Int]{
    var numbers=[Int]()
    for i in 0..<size{
        let newNumber = generator()
        numbers.append(newNumber)
    }
    return numbers
}
let arrayResult=makeArray(size:10 ,generator: {
    Int.random(in: 1...100)
})
print(arrayResult)
let rolls = makeArray(size:10){
    Int.random(in: 1...1_000)
}
print (rolls)

func doTheWork(first:()->Void,second:()->Void,third:()->Void){
    first()
    print("first")
    second()
    third()
}

doTheWork{
    print("print first method")
}second: {
    print("second method")
}third: {
    print("third method")
}
//checkpoint 5

let luckyNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]
let solution=luckyNumbers.filter{
    !$0.isMultiple(of: 2)
}.sorted(
).map{
   String($0)+" Is A Lucky Number"
}
for i in solution{
    print(i)
}

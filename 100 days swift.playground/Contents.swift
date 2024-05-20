import Cocoa

// DDay 3
var names = ["Ahmed","Mohammed","Ali","Mark"]
let ages = [20,22,42,33]
var tempretures=[15.5,22,30,38]

names[0]
ages[2]
tempretures[3]
names.append("Mostafa")

var scores=Array<Int>()
scores.append(5)
scores.append(4)
print(scores)

var albums=Array<String>()
albums.append("elemt")
albums.append("element")
print(albums)

var albums2=[String]()
albums2.append("album1")

albums.count
albums.remove(at: 1)
print (albums)
albums.removeAll()

albums.contains("element")
albums.append("element")
albums.contains("element")

var cities=["Cairo","Alabalma","Alfayoum","Alexandria","Giza"]
cities.sort()
print(cities)
cities.reverse()
print(cities)


let employee=["name":"ahmed","jobTitle":"manager","salary":"2500"]
print (employee["salary",default: "N/A"])
print (employee["sal",default: "N/A"])

var worldCup = [2022:"Qatar",2018:"Ruissa"]
print(worldCup[2022,default: "N/A"])
print(worldCup[2020,default: "N/A"])
worldCup[2022]="cairo"
print(worldCup[2022,default: "N/A"])

let people=Set(["ahmed","mohammed","ali","ahmed","Ahmed"])
print(people)
var people2 = Set<String>()
people2.insert("ali")
people2.insert("Ali")
people2.insert("Mohammed")
people2.insert("Mohammed")
print(people2)

enum WeekDay{
    case sunDay
    case monDay,friDay
}

var day=WeekDay.sunDay
print(day)
day = .monDay
day = .friDay


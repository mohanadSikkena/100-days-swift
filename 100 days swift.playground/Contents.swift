import Cocoa
// day 6
let platforms = ["macOs","Ios","TvOs"]

for device in platforms {
    print ("swift works fine on \(device)")
}

for i in 1...10 {
    print ("\(i) * 5 = \(i*5)")
}
for i in 1...10 {
    for j in 1...10 {
        print ("\(i) * \(j) = \(i*j)")
    }
}

for i in 1...5 {
    print("this count from 1 to 5 \(i)")
}
for i in 1..<5 {
    print ("this count from 1 to 4 \(i)")
}

var lyric = "Haters Gonna "

for _ in 1...5 {
    lyric += "hate  "
}
print(lyric)

var countdown = 10
while countdown > 0 {
    print (countdown)
    countdown -= 1
}

var roll = 0

while roll != 25 {
    
    roll = Int.random(in: 1...100)
    print ("I rolled \(roll)")
}
print ("Baaam")


let fileNames = ["a.jpg" , "b.txt" , "c.exe", "d.jpg" , "s.json"]

for fileName in fileNames {
    if !fileName.hasSuffix(".jpg"){
        continue
    }
    print("found image \(fileName)")
}


let number1 = 5
let number2 = 24
var multiples = [Int]()

for i in 1...100_000{
    if i.isMultiple(of: number1) && i.isMultiple(of: number2){
        multiples.append(i)
        if multiples.count >= 10 {
            break
        }
    }
}
print(multiples)


// Chek point 3

for i in 1...100 {
    if i.isMultiple(of: 3) && i.isMultiple(of: 5){
        print("FizzBuzz")
    }else if i.isMultiple(of: 3){
        print("Fizz")
    }else if i.isMultiple(of: 5){
        print("Buzz")
    }else {
        print(i)
    }
}

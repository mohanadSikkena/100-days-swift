//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by mohanad sikkena on 30/05/2024.
//

import SwiftUI

struct ContentView: View {
    @State var countries = ["Estonia", "France", "Germany", "Ireland", "Italy", "Nigeria", "Poland", "Spain", "UK", "Ukraine", "US"].shuffled()
    @State private var showAlert = false
    @State private var correctAnswer = Int.random(in: 0...2)
    @State private var score = 0
    @State private var scoreTitle = ""
    @State private var scoreMessage=""    
    func newGame(){
        correctAnswer = Int.random(in: 0...2)
        countries.shuffle()
    }
    
    
    func buttonPressed(pressedNumber:Int){
        if pressedNumber == correctAnswer{
            scoreTitle = "Correct"
            score += 1
            scoreMessage = "Your Score Is \(score)"
        }else{
            scoreMessage = "Your Score Is \(score)"
            scoreTitle = "Wrong, That’s The Flag Of \(countries[pressedNumber])"
            score = 0
        }
        showAlert = true
    }
    var body: some View {


        ZStack{
  
            CustomGradiant()
            VStack{
                Spacer()
                Spacer()
                Text("Guess The Flag").font(.largeTitle.weight(.bold))
                    .foregroundStyle(.white)
                VStack(spacing:15){
                    VStack{
                        Text("Tap The Flag of").foregroundStyle(.secondary).font(.subheadline.weight(.heavy))
                        Text("\(countries[correctAnswer])").font(.largeTitle.weight(.semibold))

                    }
                        ForEach(0..<3){number in
                            Button{
                                buttonPressed(pressedNumber: number)
                                
                            }label:{
                                Image(countries[number]).clipShape(.capsule).shadow(radius: 5)
                            }
                        
                }
                }.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                    .padding(.vertical,20)
                    .background(.regularMaterial)
                    .clipShape(.rect(cornerRadius: 20))
                Spacer()
                Text("Score : \(score)")
                    .font(.title.bold())
                    .foregroundStyle(.white)
                Spacer()
                Spacer()
            }.padding()
        }.alert(scoreTitle,isPresented: $showAlert){
            
            Button("Next Game",action: newGame)
            
        }message: {
            Text(scoreMessage)
            
        }.ignoresSafeArea()
    }
}
#Preview {
    ContentView()
}

struct CustomGradiant :View {
    var body: some View {
        RadialGradient(stops: [
            .init(color: Color(red: 0.1, green: 0.2, blue: 0.45), location: 0.3),
            .init(color: Color(red: 0.76, green: 0.15, blue: 0.26), location: 0.3),
           ], center: .top, startRadius: 200, endRadius: 700)
    }
}

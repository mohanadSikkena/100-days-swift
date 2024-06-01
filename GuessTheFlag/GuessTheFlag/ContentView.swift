//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by mohanad sikkena on 30/05/2024.
//

import SwiftUI

struct ContentView: View {
    @State var countries = ["Estonia", "France", "Germany", "Ireland", "Italy", "Nigeria", "Poland", "Spain", "UK", "Ukraine", "US"]
    @State private var showAlert = false
    @State private var correctAnswer = Int.random(in: 0...2)
    @State var pressed:Int?
    @State var streak = 0
    var isCorrectAnswer :Bool{
        correctAnswer == pressed
    }
    var body: some View {


        ZStack{
  
            Color.blue.ignoresSafeArea()
            VStack(spacing:30){
                VStack{
                    Text("Tap The Flag of \(countries[correctAnswer])").foregroundStyle(.white)

                }
                    ForEach(0..<3){number in
                        Button{
                            pressed = number
                            if isCorrectAnswer {
                                streak += 1
                            }
                            showAlert = true
                        }label:{
                            Image(countries[number])
                        }
                    
            }
            }
        }.alert(isCorrectAnswer ? "Winner " : "Ooops!",isPresented: $showAlert){
            
            Button("Next Game"){
                correctAnswer = Int.random(in: 0...2)
                countries.shuffle()
                if !isCorrectAnswer {
                    streak = 0
                }
                
            }
            Button("Replay"){
                streak = 0
            }
        }message: {
            Text("Winning Streak \(streak)")
        }
    }
}
#Preview {
    ContentView()
}

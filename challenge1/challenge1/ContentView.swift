//
//  ContentView.swift
//  challenge1
//
//  Created by mohanad sikkena on 30/05/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var userInput = 0.0
    
    private let temperatures = ["Celsius" , "Fahrenheit" , "Kelvin"]
    @State var selectedInputTemprutere = "Celsius"
    @State var selectedOutputTemprutere = "Fahrenheit"
    
    
    
    private var toCelsius :Double {
        switch selectedInputTemprutere {
        case "Fahrenheit" :return (userInput - 32) / (9/5)
        case "Kelvin" :return userInput - 273.15
        default : return userInput
        }
    }
    
    private var toOutput: Double{
        switch selectedOutputTemprutere {
        case "Fahrenheit" : return toCelsius * (9/5) + 32
        case "Kelvin" : return toCelsius + 273.15
        default : return toCelsius
        }
    }
    var body: some View {
        NavigationStack{
            Form{
                Section("Select The Current Tempruture"){
                    Picker("" , selection: $selectedInputTemprutere){
                        ForEach(temperatures , id: \.self){
                            Text("\($0)")
                        }
                    }.pickerStyle(.segmented)
                    
                }
                Section("current Tempruture"){
                    TextField("Enter The current Tempruture" , value:$userInput , format:.number).keyboardType(.numberPad)
                }
                Section("Select The Desired Tempruture"){
                    Picker("" , selection: $selectedOutputTemprutere){
                        ForEach(temperatures , id: \.self){
                            Text("\($0)")
                        }
                    }.pickerStyle(.segmented)
                    
                }
                Section("current Tempruture in \(selectedOutputTemprutere)"){
                    Text("\(toOutput.formatted())")
                }
                
            }.navigationTitle("Temperature conversion")
                .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    ContentView()
}

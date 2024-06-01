//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by mohanad sikkena on 30/05/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
            HStack{
                Spacer()
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text("Hello, world!")
                Spacer()
                Spacer()
                Spacer()
                
            }
            ZStack{
                Text("Hello, world!")
                Text("This is inside a stack")

            }
            ZStack{
                Text("Hello World")
            }.background(.red)
            ZStack{
                Color.red.frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/,height: 100)
                Text("Hello World")
            }
            HStack{
                Color.blue.frame(width: 100,height: 100)
                Color.red.frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/ , height: 100)
            }
            Color.green.ignoresSafeArea()
            
        }
//        .padding()
        
    }
}
//#Preview {
//    ContentView()
//}

struct StackContentView : View {
    var body: some View {
        ZStack{
            VStack{
                Color.red
                Color.green
            }
            Text("Hello World")
                .foregroundStyle(.secondary)
                .background(.ultraThinMaterial)
                .padding(50)
        }.ignoresSafeArea()
    }
}
//#Preview{
//    StackContentView()
//}

struct GradiantContentView : View{
    var body: some View{
        VStack{
            LinearGradient(colors: [Color.red , Color.blue], startPoint: .leading, endPoint: .trailing)
            LinearGradient(stops: [Gradient.Stop(color: .red, location: 0.45) , Gradient.Stop(color:.blue, location: 0.70)], startPoint: .leading, endPoint: .trailing)
            AngularGradient(colors: [.red, .yellow, .green, .blue, .purple, .red], center: .center)

            RadialGradient(colors: [.red, .blue], center: .center, startRadius: 20, endRadius: 200)

            LinearGradient(colors: [Color.red,Color.blue], startPoint: .top, endPoint: .bottom)
            LinearGradient(colors: [Color.red,Color.blue], startPoint: .topLeading, endPoint: .bottomTrailing)

        }.ignoresSafeArea()
    }
}
//#Preview{
//    GradiantContentView()
//}

struct GradiantTextContentView : View {
    var body: some View {
        Text("Hello Gradiant")
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/ , maxHeight: .infinity)
            .foregroundStyle(.white)
            .background(.red.gradient)
    }
}
//#Preview{
//    GradiantTextContentView()
//}

struct NewButtonContentView :View {
    var body: some View {
        Button("Press Me",role: nil ,action: buttonPressed)
        VStack{
            Button("Press Me",role: .destructive){}
            Button("Press Me"){ }
                .buttonStyle(.bordered)
            Button("Press Me",role: .destructive){}
                .buttonStyle(.bordered)
            Button("Press Me"){ }
                .buttonStyle(.borderedProminent)
            Button("Press Me",role: .destructive){}
                .buttonStyle(.borderedProminent)
            Button("Press Me",role: .destructive){}
                .buttonStyle(.borderedProminent)
                .tint(.mint)
            Button{
                
            }label: {
                Text("Press Me")
                    .padding()
                    .foregroundStyle(.white)
                    .background(.red.gradient)
            }
            Button{
                
            }label: {
                Image(systemName: "pencil")
            }
            Button("Edit" , systemImage: "pencil"){}
            Button{
                
            }label: {
                Label("Edit", systemImage: "pencil")
                
            }
        }

    }
    func buttonPressed(){
        print("Button Pressed")
    }
}

//#Preview{
//    NewButtonContentView()
//}

struct AlertContentView :View {
    @State private var showAlert :Bool = false
    var body: some View {
        Button("Show Alert"){
            print("Button Pressed !")
            showAlert = true
        }.alert("This Is Important!",isPresented: $showAlert){
            Button("Delete", role : .destructive){}
            Button("Cancel", role : .cancel){}
        }message: {
            Text("Please Read This")
        }
    }
}



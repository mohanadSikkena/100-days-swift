//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by mohanad sikkena on 02/06/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
            
            Button("Hello World"){
                print(type(of: self.body))
            }
                .background(.red)
                .padding()
                .background(.blue)
                .padding()
                .background(.green)
        }
        .padding()
//        .background(.blue
//        )
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
    }
}
//
//#Preview {
//    ContentView()
//}

struct ConditionalModifires : View {
    @State private var blueText = true
    var body: some View {
        
        Button("Hello World"){
            blueText.toggle()
        }.foregroundStyle(blueText ? .blue : .red)
    }
}

//#Preview{
//    ConditionalModifires()
//}

struct EnvironmentModifiers : View{
    var body:some View {
        VStack{
            
            Text("Gryffindor").font(.caption)
            Text("Hufflepuff")
            Text("Ravenclaw")
            Text("Slytherin").blur(radius: 3)
            Button("aHMED"){}
        }.font(.largeTitle)
            .blur(radius: 2)
    }
}
//#Preview{
//    EnvironmentModifiers()
//}
struct ViewsAsProperties :View {
    let name = "ali"
    let v1 = Text("Ahmed Ali")
    var v2 :some View {
        Text("Name Is \(name)")
    }
    @ViewBuilder var v3 : some View {
        Text("First")
        Text("Second")
    }
    
    var body: some View {
        VStack{
            v1.foregroundStyle(.red)
            v2
            v3
        }
    }
}
//#Preview{
//    ViewsAsProperties()
//}


struct ViewCompositions : View {
    var body: some View {
        
        VStack(spacing: 10) {
            CapsuleView(text: "First")
            CapsuleView(text: "Second")
        }
    }
}
//#Preview{
//    ViewCompositions()
//}

struct CapsuleView : View {
    var text:String
    var body: some View {
        Text(text)
            .font(.largeTitle)
            .padding()
            .foregroundStyle(.white)
            .background(.blue)
            .clipShape(.capsule)

    }
}

struct CustomModifiers : View {
    var body: some View {
        Text("TT").customTytleStyle()
        Color.yellow.frame(width: 200, height: 200)
            .addWaterMark(with: "Water Mark")
    }
}


#Preview{
    CustomModifiers()
}

extension View {
    func customTytleStyle ()->some View {
        modifier(Title())
    }
    func addWaterMark(with text:String)->some View {
        modifier(WaterMark(text: text))
    }
}
struct Title :ViewModifier {
    func body(content: Content) -> some View {
        content.font(.largeTitle)
            .foregroundStyle(.cyan)
            .padding()
            .background(.red)
            .clipShape(.rect(cornerRadius:20))
    }
}

struct WaterMark : ViewModifier {
    var text :String
    func body(content: Content) -> some View {
        ZStack{
            content
            Text(text)
                .font(.caption)
                .foregroundStyle(.white)
                .padding(5)
                .background(.black)
        }
    }
}

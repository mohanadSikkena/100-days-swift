






import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
                .foregroundStyle(.cyan)
        }
        .padding()
    }
}

//#Preview {
//    ContentView()
//}

struct FormView: View {
    var body : some View {
        Form{
            Text("Hello Form")
            Text("Hello Form")
            Text("Hello Form")
            Text("Hello Form")
            Text("Hello Form")
            Text("Hello Form")
            Text("Hello Form")
            Text("Hello For m")
            Section{
                Text("Hello Section ") 
                Text("Hello Section ")
                Text("Hello Section ")
                Text("Hello Section ")
                
            }
            Section{
                Text("Hello Section ")
                Text("Hello Section ")
                Text("Hello Section ")
                Text("Hello Section ")
                Text("Hello Section ")
                Text("Hello Section ")
                Text("Hello Section ")
            }
        }
    }
}
//#Preview{
//    FormView()
//}

struct Navigation : View {
    var body : some View {
        NavigationStack {
            Form {
                Section {
                    Text("Hello Navigation Stack")
                }
            }
            .navigationTitle("Hello SwiftUi")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}
//#Preview {
//    Navigation()
//}

struct ButtonTest : View {
    @State private var tapCount : Int = 0
    var body: some View {
        Button("Tap count \(self.tapCount)") {
            self.tapCount += 1
        }
    }
}
//#Preview{
//    ButtonTest()
//}

struct TextBox : View {
    @State private var name = ""
    var body: some View {
        Form{
            TextField("Enter Yor Name" , text: $name)
            Text("Hello \(name)")
            Button("Change Name"){name = "No Name"}
        }
    }
}

//#Preview{
//    TextBox()
//}

struct LoopViews : View {
    var body: some View {
        Form{
            ForEach(0..<100){
                Text("The Current Value Is \($0)")
            }
        }
    }
}
//#Preview{
//    LoopViews()
//}

struct PickerView : View {
    @State private var students=["Ahmed" , "Mohammed" , "Ali"]
    @State private var selectedStudent = "Ahmed"
    @State private var newStudent=""
    var body: some View {
        NavigationStack{
            Form{
                Picker("Select Your Student" ,selection: $selectedStudent){
                    ForEach(students, id: \.self){
                        Text($0)
                    }
                }
                Section{
                    TextField("New Student",text: $newStudent)
                    Button("Add Student"){
                        if !newStudent.isEmpty {
                            students.append(newStudent)
                            newStudent = ""
                        }
                    }
                }
                
            }
            
        }
    }
}
#Preview{
    PickerView()
}

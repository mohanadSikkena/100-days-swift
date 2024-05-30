






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

struct WeSplitContentView : View{
    @State private var checkAmount = 0.0
    @State private var numberOfPeople = 2
    @State private var tipPercentage = 20
    private let tipPercentages = [0 , 10 , 15 , 20 , 25 , 30 ]
    @FocusState private var amountFocus : Bool
    
    var totalCheck : Double{
        let tipSelection = Double(tipPercentage)
        
        let checkTipAmount = tipSelection / 100.0 * checkAmount
        let grandAmount = checkAmount + checkTipAmount
        return grandAmount
    }
    var totalPerson : Double{
        let peopleCount = Double(numberOfPeople + 2)
        
        let amountPerPerson = totalCheck / peopleCount
        
        return amountPerPerson
    }
    var body: some View {
        NavigationStack{
            Form{
                Section {
                    TextField("Amount" ,value: $checkAmount ,format: .currency(code:Locale.current.currency?.identifier ?? "USD")).keyboardType(.decimalPad).focused($amountFocus)
                    Picker("Number Of People" , selection: $numberOfPeople){
                        ForEach (2..<100){
                            Text("\($0) People")
                        }
                    }.pickerStyle(.navigationLink)
                }
                Section("How Much Do You want To Tip?"){
                
                    Picker("Tip percentage" , selection: $tipPercentage){
                        ForEach(tipPercentages , id: \.self){
                            Text($0 , format: .percent)
                        }
                    }.pickerStyle(.segmented)
                }
                
                Section("How Much Do You want To Tip?"){
                
                    Picker("Tip percentage" , selection: $tipPercentage){
                        ForEach(0..<101 , id: \.self){
                            Text($0 , format: .percent)
                        }
                    }.pickerStyle(.navigationLink)
                }
                Section ("Amount per person"){
                    Text(totalPerson , format: .currency(code:Locale.current.currency?.identifier ?? "USD"))
                }
                Section("Total Check"){
                    Text(totalCheck , format: .currency(code:Locale.current.currency?.identifier ?? "USD"))
                }
                
            }.navigationTitle("WeSplit").toolbarTitleDisplayMode(.inline).toolbar{
                if amountFocus {
                    Button("Done"){
                        amountFocus = false
                    }
                }
            }

        }   
    }
}
#Preview{
    WeSplitContentView()
}

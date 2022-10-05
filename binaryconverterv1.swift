import SwiftUI

struct ContentView: View {
    @State var deneryq = Int.random(in: 1...255)
    @State var inputanswer = 0
    @State var answer = 0
    var body: some View {
        VStack {
            Text("Binary conerter game")
                .font(.title)
                .padding()
            
            Text("\(deneryq)")
            
            Image("Binarybg")
                .resizable()
                .scaledToFit()
                .padding()
            
            TextField("Please enter your binary convertion", value: $inputanswer, format: .number)
                .textFieldStyle(.roundedBorder)
                .border(.green, width: 4)
                .keyboardType(.decimalPad)
                .padding()
            
            if (String(inputanswer) == String(deneryq, radix: 2)){
                Text("Correct!")
            }
            else{
                Text("Incorrect")
            }
            
            Button("New Number"){
                deneryq = Int.random(in: 1...255)
            }
            .buttonStyle(.bordered)
            .padding()
        }
    }
}

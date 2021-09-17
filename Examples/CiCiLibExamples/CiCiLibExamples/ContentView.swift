import SwiftUI
import CiCiLib

struct ContentView: View {
    
    private let pair = Pair(first: 1, second: "One")
    private let hello = Hello(name: "Jason")
    private let stack = Stack<Int>()
    
    @State private var numbers = [Int]()
    
    var body: some View {
        VStack {
            HelloView(name: "Kevin")
                .padding()

            Text(pair.toString())
                .padding()
            
            Text(hello.toString())
                .padding()
            
            Button("Test Stack") {
                testStack()
            }
            .padding()
            
            VStack(alignment: .leading) {
                if !numbers.isEmpty {
                    Text("Stack")
                        .font(.title)
                        .padding()
                }
                
                List(numbers, id: \.self) { num in
                    Text("\(num)")
                }
                .padding()
            }
        }
    }
    
    func testStack() {
        
        let a = Stack<Int>()
        
        a.push(element: 1)
        a.push(element: 2)
        a.push(element: 3)
        
        while !a.isEmpty() {
            let top = try! a.top()
            numbers.append(top)
            
            try! a.pop()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

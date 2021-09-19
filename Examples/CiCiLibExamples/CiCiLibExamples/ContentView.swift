import SwiftUI
import CiCiLib

struct ContentView: View {
    
    private let pair = Pair(first: 1, second: "One")
    private let hello = Hello(name: "Jason")
    private let stack = Stack<Int>()
    
    @State private var numbers = [Int]()
    
    @State private var name: String = ""
    @State private var first: String = ""
    @State private var second: String = ""
    
    var body: some View {
        VStack {
            TextField("Name", text: $name)
                .frame(height: 30)
                .border(Color.blue, width: 1)
                .padding([.leading, .trailing])
            
            HStack {
                TextField("First", text: $first)
                    .frame(height: 30)
                    .border(Color.blue, width: 1)
                
                TextField("Second", text: $second)
                    .frame(height: 30)
                    .border(Color.blue, width: 1)
            }
            .padding([.leading, .trailing])
            
            
            HelloView(name: name)

            Text(Pair(first: first, second: second).toString())
                .padding(5)
            
            Text(Hello(name: name).toString())
                .padding(5)
            
            Button("Test Stack") {
                testStack()
            }
            .padding(5)
            
            VStack(alignment: .leading) {
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
        
        numbers.removeAll()
        
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

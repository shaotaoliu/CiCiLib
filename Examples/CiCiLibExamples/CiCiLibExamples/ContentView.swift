import SwiftUI
import CiCiLib

struct ContentView: View {
    var body: some View {
        
        HelloView()
    }
}

func test() {
    //var a = Stack<Int>()
    
    var h = Hello(name: "Kevin")
    h.print()
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

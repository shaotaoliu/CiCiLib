import SwiftUI

@available(macOS 10.15, *)
struct HelloView: View {
    let name: String
    
    var body: some View {
        Text("Hello, \(name)")
    }
}

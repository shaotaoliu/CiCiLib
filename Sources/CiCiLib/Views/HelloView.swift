import SwiftUI

@available(iOS 13.0, *)
struct HelloView: View {
    let name: String
    
    var body: some View {
        Text("Hello, \(name)")
    }
}

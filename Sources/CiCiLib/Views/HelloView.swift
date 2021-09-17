import SwiftUI

@available(iOS 13.0, *)
public struct HelloView: View {
    public let name: String
    
    public var body: some View {
        Text("Hello, \(name)")
    }
}

import SwiftUI

@available(iOS 13.0, *)
public struct HelloView: View {
    
    private let name: String!
    
    public init(name: String) {
        self.name = name
    }
    
    public var body: some View {
        Text("Hello, \(name)")
    }
}

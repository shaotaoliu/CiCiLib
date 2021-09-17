import SwiftUI
import Foundation

//@available(iOS 13.0, *)
public struct HelloView: View {
    
    private let name: String!
    
    public init(name: String) {
        self.name = name
    }
    
    public var body: some View {
        VStack {
            Text("Hello, \(name)")
                .padding()
            
            Image(uiImage: UIImage(named: "hello", in: .module, with: nil)!)
                
        }
    }
}

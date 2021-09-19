import SwiftUI

@available(iOS 13.0, *)
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
                .resizable()
                .frame(width: 100, height: 100, alignment: .center)
                .aspectRatio(contentMode: .fit)
        }
    }
}

@available(iOS 13.0, *)
struct HelloView_Previews: PreviewProvider {
    static var previews: some View {
        HelloView(name: "World")
    }
}

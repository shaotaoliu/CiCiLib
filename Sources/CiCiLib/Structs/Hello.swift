public struct Hello {
    
    private let name: String
    
    public init(name: String) {
        self.name = name
    }
    
    public func toString() -> String {
        return "Hello, \(name)"
    }
    
    public func print() {
        Swift.print(self.toString())
    }
}

public struct Hello {
    public let name: String
    
    public init(name: String) {
        self.name = name
    }
    
    public func toString() -> String {
        return "Hello, \(name)"
    }
}

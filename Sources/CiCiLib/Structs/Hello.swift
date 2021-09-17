struct Hello {
    let name: String
    
    init(name: String) {
        self.name = name
    }
    
    func toString() -> String {
        return "Hello, \(name)"
    }
}

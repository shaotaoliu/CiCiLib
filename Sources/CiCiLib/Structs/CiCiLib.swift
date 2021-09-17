struct Hello {
    let name: String
    
    init(name: name) {
        self.name = name
    }
    
    func toString() -> String {
        return "Hello, \(name)"
    }
}

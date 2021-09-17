import Foundation

struct Pair<T, U> {
    var first: T
    var second: U
    
    init(first: T, second: U) {
        self.first = first
        self.second = second
    }
    
    func toString() -> String {
        return "(\(first), \(second))"
    }
    
    func print() {
        Swift.print(self.toString())
    }
}

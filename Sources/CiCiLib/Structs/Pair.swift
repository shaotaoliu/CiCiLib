import Foundation

public struct Pair<T, U> {
    
    public var first: T
    public var second: U
    
    public init(first: T, second: U) {
        self.first = first
        self.second = second
    }
    
    public func toString() -> String {
        return "(\(first), \(second))"
    }
    
    public func print() {
        Swift.print(self.toString())
    }
}

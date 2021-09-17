import Foundation

public class Stack<T> {
    
    private var array = [T]()

    public func push(element: T) {
        array.append(element)
    }
    
    public func pop() throws {
        if array.isEmpty {
            throw StackError.StackIsEmpty
        }
        
        array.removeLast()
    }
    
    public func top() throws -> T {
        if array.isEmpty {
            throw StackError.StackIsEmpty
        }
        
        return array.last!
    }
    
    public func isEmpty() -> Bool {
        return array.isEmpty
    }
    
    public func size() -> Int {
        return array.count
    }
    
    public func clear() {
        array.removeAll()
    }
}

public enum StackError: Error {
    case StackIsEmpty
}
